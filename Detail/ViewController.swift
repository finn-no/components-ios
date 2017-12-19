import UIKit

class ViewController: UIViewController {

    public let title1FontSize: CGFloat = 28

    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var contentView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var finnCodeInfoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .stone
        label.text = "FINN-kode"
        return label
    }()

    lazy var lastEditedInfoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .stone
        label.text = "Sist endret"
        return label
    }()

    lazy var finnCodeContentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .stone
        label.text = "145789632"
        return label
    }()

    lazy var lastEditedContentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .stone
        label.text = "24. nov 2017 14:04"
        return label
    }()

    lazy var leftAdInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [finnCodeInfoLabel, lastEditedInfoLabel])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .leading
        stackView.spacing = .smallSpacing
        return stackView
    }()

    lazy var rightAdInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [finnCodeContentLabel, lastEditedContentLabel])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .leading
        stackView.spacing = .smallSpacing
        return stackView
    }()

    lazy var adInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [leftAdInfoStackView, rightAdInfoStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = .mediumSpacing
        return stackView
    }()

    lazy var relevantAdsFeedImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = #imageLiteral(resourceName: "relevantAdsFeed")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    func setup() {
        view.backgroundColor = .white

        view.addSubview(scrollView)
        scrollView.addSubview(contentView)

        let galleryView = GalleryView()
        galleryView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(galleryView)

        let titleView = TitleView()
        titleView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleView)

        let priceView = PriceView()
        priceView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(priceView)

        let messageButton = MessageButtonView()
        messageButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(messageButton)

        let showNumberButton = ShowNumberButtonView()
        showNumberButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(showNumberButton)

        let profileView = ProfileView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(profileView)

        let adressView = AdressView()
        adressView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(adressView)

        let descriptionView = DescriptionView()
        descriptionView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(descriptionView)

        let categoryView = CategoryView()
        categoryView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(categoryView)

        let bannerView = BannerView()
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(bannerView)

        let safePayView = SafePayView()
        safePayView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(safePayView)

        let loanPriceView = LoanPriceView()
        loanPriceView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(loanPriceView)

        let deliveryView = DeliveryHelpView()
        deliveryView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(deliveryView)

        let adReporterView = AdReporterView()
        adReporterView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(adReporterView)

        contentView.addSubview(adInfoStackView)
        contentView.addSubview(relevantAdsFeedImageView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

            galleryView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: .mediumLargeSpacing),
            galleryView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            galleryView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),
            galleryView.heightAnchor.constraint(equalToConstant: 330),

            titleView.topAnchor.constraint(equalTo: galleryView.bottomAnchor, constant: .mediumLargeSpacing),
            titleView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            titleView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            priceView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: .mediumSpacing),
            priceView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            priceView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            messageButton.topAnchor.constraint(equalTo: priceView.bottomAnchor, constant: .mediumLargeSpacing),
            messageButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            messageButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            showNumberButton.topAnchor.constraint(equalTo: messageButton.bottomAnchor, constant: .smallSpacing),
            showNumberButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),

            profileView.topAnchor.constraint(equalTo: showNumberButton.bottomAnchor, constant: .smallSpacing),
            profileView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            profileView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),
            profileView.heightAnchor.constraint(equalToConstant: 125),

            adressView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: .mediumSpacing),
            adressView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),

            descriptionView.topAnchor.constraint(equalTo: adressView.bottomAnchor, constant: .mediumLargeSpacing),
            descriptionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            descriptionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            categoryView.topAnchor.constraint(equalTo: descriptionView.bottomAnchor, constant: .mediumSpacing),
            categoryView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            categoryView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            bannerView.topAnchor.constraint(equalTo: categoryView.bottomAnchor, constant: .mediumSpacing),
            bannerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            bannerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            bannerView.heightAnchor.constraint(equalToConstant: 400),

            safePayView.topAnchor.constraint(equalTo: bannerView.bottomAnchor, constant: .mediumSpacing),
            safePayView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),

            loanPriceView.topAnchor.constraint(equalTo: safePayView.topAnchor),
            loanPriceView.leadingAnchor.constraint(equalTo: safePayView.trailingAnchor, constant: .mediumLargeSpacing),
            loanPriceView.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            deliveryView.topAnchor.constraint(equalTo: safePayView.bottomAnchor, constant: .mediumSpacing),
            deliveryView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            deliveryView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            adReporterView.topAnchor.constraint(equalTo: deliveryView.bottomAnchor, constant: .mediumSpacing),
            adReporterView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            adReporterView.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),

            adInfoStackView.topAnchor.constraint(equalTo: adReporterView.bottomAnchor, constant: .mediumLargeSpacing),
            adInfoStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),

            relevantAdsFeedImageView.topAnchor.constraint(equalTo: adInfoStackView.bottomAnchor, constant: .mediumSpacing),
            relevantAdsFeedImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .mediumLargeSpacing),
            relevantAdsFeedImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.mediumLargeSpacing),
            relevantAdsFeedImageView.heightAnchor.constraint(equalToConstant: 650),
            relevantAdsFeedImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
        ])
    }
}
