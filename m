Return-Path: <blinux-list+bncBCHY5TMQ6YERBJW7SLEAMGQEUPMYUGA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C4071C2513D
	for <lists+blinux-list@lfdr.de>; Fri, 31 Oct 2025 13:46:32 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8a4c63182sf56489411cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 31 Oct 2025 05:46:32 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1761914791; cv=pass;
        d=google.com; s=arc-20240605;
        b=eYsLyEzudbvJbjy5p/5Ean1sBc8jjCbPXjDCrSmXtP9zwKtmrbNwq6sNOMC9p7lmPh
         2t0EbLxZqFH3M33+mmAaI6SBz5hDD0qADaRPgmHYslrpRxy+KDvBjW9SfbbJEX2MGGY9
         KcMCK5A8+puFJuHQ3vHR1y+vtNo2RrBudDWGu38KKmjshSQIf+7QSUHoCsiZ3wz7eSoN
         1/6QpQeb85B9tamQ+4yEO0irQcQ7aht/D42C/AkLECBOzB5ybPrzGv9obnxRxzUeQ8mp
         70zdrvGtdk/hgqW93LvKxmHItV/jnrL1IPkoaSTPKdEGC7esg8FvjDH25n1DP3FMNFZQ
         5MBg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:autocrypt:subject
         :from:to:user-agent:mime-version:date:message-id:delivered-to;
        bh=i60ze0hTLUEEGT8GpaYuiTw3gYC73LRy/2tq+S59xWM=;
        fh=wUuZRg54rL9GCBiQfSTXU88DY+zAEwz3AG2D2DhkJD4=;
        b=OFT/+nV10bsd1+mqOMbFQx3T4P8t/R8q3i104ca5BjV1UB2uGAFYqzECPF2dAjwA/Z
         4ihkikEcjFjQz4GGI8Op+6+oIsyBicLtOJptYltVSCaC29DuuXljKQB06omYPJ7Nzl6b
         /OqTG7Hbxqk3UMKGr7Qc+F3fPDWl3DMP99MytYpj69oTc3bJSZL3UOgQbpPOtRc6ukeS
         hKXi7vykXmhcT6CNh+N83zQE0XRQm1xfQSN7rImuLlOyj6bJSKnJQYOq1UGZeXTGekDV
         KFelqGszj7uGH5TEoXbhBautsDhHd9awf+PwDVJL3B0Thii66pyviHLsr6EhMp77pAQg
         nGGA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=harrastenurkka.fi dmarc=pass fromdomain=harrastenurkka.fi);
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761914791; x=1762519591;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:autocrypt:subject:from:to:user-agent:mime-version
         :date:message-id:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i60ze0hTLUEEGT8GpaYuiTw3gYC73LRy/2tq+S59xWM=;
        b=OyuT+2IBp0p6AA2S+Ove20V2v6aQb5DRNgdJrUYlL3vGDSJciXw5V1cr75h8gQS6n7
         mqVPawMT22FCLd1qNeT0PNxplYEBUOZspRGOmzaQq0yHau33j/XX91g8Uwuza0q+aoqt
         5dklF6kmpGPykh2ZZaBko6Gn80jeo/cXRTzIQLptmR1wUA5uLj0QSTPwZml6W6z0/G3p
         OkjJM8sPtbfSL9GukrcywLOzQnF1JOt7LuH2CRgTWSexWRdkkoaOdYrIn3cjBu5fe/zw
         cWjThyPlDwatpglYh26Lp0Vmh+1SYvTsq8P7f5JnP8C8XB73kQRURmVFpSJguoIV03/z
         Hadg==
X-Forwarded-Encrypted: i=3; AJvYcCUEO34T4r+8BhbK3mhMj9kq9ox89lBt+wg5mTdU9xwq5Yf4QAWKJJf1spV42hGsL32GJ74pvg==@lfdr.de
X-Gm-Message-State: AOJu0YzUweILX3NzXDFPosu9Zvi0rq8a47PL/dSCBjsDxLQtW9GVJkcy
	0jAoKY8VU3xVGa5BKWgzKnkWFq+bd8y/OgGYwLatQEP76T0oTzwNsOZeCi7tQRvLB7s=
X-Google-Smtp-Source: AGHT+IERp5uzPck4jbGmnPZ8ifw5TjKm+l+r2W1sT2yNCH3hAjWTiV9pzjhNkxZbHD6FgG45tNAmlg==
X-Received: by 2002:a05:622a:8c8:b0:4ed:eb6:6f28 with SMTP id d75a77b69052e-4ed30faadd8mr41355871cf.54.1761914791178;
        Fri, 31 Oct 2025 05:46:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="Ae8XA+YItwXUWzCUX3PBsctYj1wIjirOTSgqQXUE5Yr+Msrlsg=="
Received: by 2002:a05:6214:b65:b0:779:d180:7e3f with SMTP id
 6a1803df08f44-8801b501187ls30608226d6.1.-pod-prod-01-us; Fri, 31 Oct 2025
 05:46:30 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWkdWOD8Z+bHfBsuN3ti+bLru3BIRgjaYgtVRrmSlPmqTRb0NQIMiMvNyrjRIU6Xjd9tujZohLuUm/Ncw==@gapps.redhat.com
X-Received: by 2002:ad4:5ba3:0:b0:880:278d:d4aa with SMTP id 6a1803df08f44-8802f287873mr46643356d6.7.1761914789871;
        Fri, 31 Oct 2025 05:46:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1761914789; cv=pass;
        d=google.com; s=arc-20240605;
        b=Lob2geHPcAZJ4JycmGaCG2xWmuY3XkUTXcldPjLXV2ilENgKovC/aJdDUPPi1RviZY
         EQvYaPpxcIqfM/irfVyay+Uka3mmudRB9FSpsC66J3WRhsoBT/TnSLnGD+fjG9/ZA76K
         Ae1L76I76idcCRvOsp6Er13dtYSBBXbPPLyBbnV6kBr+/8WfB4eYoOTCCNt8cdKgaKFM
         9y2I1ui1pWmLdQC3VboDSSbBlx44kieKJab4jECAc6kAZ2nmRguLKUdYoxIOYapBDIxM
         pG0QyyGYR5qN9HuZz6qruu0h5gy63dZRXgi8j52BdTr1Dk7a2VX0CNmtZGdJg3nfiqTf
         isLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:autocrypt:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to;
        bh=dWq8u1EToGUeXETVT6yYDcu5GTyNwi0n77L5pX3rCXE=;
        fh=gZ/7PhQ87MwCqoVww6Ytb0wKxpXvIP4KPMJrT3WqLt0=;
        b=T1y/LEzpeFP88YVw+Qd086yxvV/nyGOQ5AgSHgJZRWkxfdIHjVTi3cUIItvMGP7A8x
         k8otyc4zESyYoHOhFe8MUrbc04cCjMcj8qIeHdp/+1NK3tSkusmMrfg9+sfyoPYPWMHW
         ivW6eKXVDCF7YpaKrBVGk1Xpe1tw1jy5V0xDH/U4m+Fz9C2S/QIA4VG7mREUOKBtxbY3
         0SAYka51oeJ1WROwiRKRewCdhJYqIj2wYQ6Hu3pi1xdTba/xkDXM98p1yf+UpJfAlwuQ
         VIORTwBbsaGVZB++hNjw1Cdm2/AyeliD5xeVpNredroFb4fFIokMA06xPVdOZ2eDBNiz
         69mQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=harrastenurkka.fi dmarc=pass fromdomain=harrastenurkka.fi);
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-88036302f64si4937616d6.444.2025.10.31.05.46.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:46:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-425-QzFtZ6tLNgmdttjU9ysdfQ-1; Fri,
 31 Oct 2025 08:46:27 -0400
X-MC-Unique: QzFtZ6tLNgmdttjU9ysdfQ-1
X-Mimecast-MFC-AGG-ID: QzFtZ6tLNgmdttjU9ysdfQ_1761914787
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10A5D1956059
	for <blinux-list@gapps.redhat.com>; Fri, 31 Oct 2025 12:46:27 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0BDF130001A6; Fri, 31 Oct 2025 12:46:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 08F0B30001A1
	for <blinux-list@redhat.com>; Fri, 31 Oct 2025 12:46:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 801E41956048
	for <blinux-list@redhat.com>; Fri, 31 Oct 2025 12:46:26 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1761914785;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=dWq8u1EToGUeXETVT6yYDcu5GTyNwi0n77L5pX3rCXE=;
	b=OpCXy9aj5NC6PrHSGP4m2nO1mQmAqaq2najWoc4BcqQ7+wBIuKM3ah+5N+jFJa4nSN9g07
	giBEBvMAdXcQKTJf6f0rvXzkZX9MpgAIq9j9GP2OcbP9Gw4Zzt2t2GAEhx19mUV5FBaplB
	EmslvzLwBHpcWjEy4dhdhZVTG9LKbMHOK9L1REYfhegUaKX1pCuidpdh4UVx4DmAvFxNCH
	QRuSaigqaCICxmkTPTHFCIWbO32AQaEterIsYJYoDb5XWNBdSgJKrRgO4ZtSMgxYitOYXs
	RjFzvKKnS70i//yVPULjuYgmOQyu3MHvscOBO/HlzM57cr6ZAExabmL0zC5JsA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1761914785; a=rsa-sha256;
	cv=none;
	b=X3II4a9VtyY2ZPknaVOcMzkTKpOkVLoHlnLXb99UKwbsn7bVNgTPmxbNurClYDjONRBxd1
	eM0Uue8hQ0SH1K0k5EjiW5zDnZLs9/y23bemIQ+1DEIHbEZrtkWDcF4DjeAVRsLwsy6dtn
	mG9Gc25Q8LkEloCawTG+P1nH3UB1GiE36k6jAMUeSIibDM7FUiIEaZeyjsVfjA6oHkIsy5
	XXsE2t9FKbCQlmehQ9oFA4jbZryxOguK8p1JEWDvp14ubJ4amQMUCtJ0z1OAl6osY5L8WX
	tPHLbwpnwaZDgz3OtFufQKoDp6s8PG2zt4AQTHJD6pagSpreyd3IpiTRmtub6g==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=none;
	dmarc=pass (policy=reject) header.from=harrastenurkka.fi;
	spf=pass (relay.mimecast.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-1r3080uwO6mKISN4XQrDkg-1; Fri, 31 Oct 2025 08:46:23 -0400
X-MC-Unique: 1r3080uwO6mKISN4XQrDkg-1
X-Mimecast-MFC-AGG-ID: 1r3080uwO6mKISN4XQrDkg_1761914780
Received: from [192.168.1.20] (89-166-47-190.bb.dnainternet.fi [89.166.47.190])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id B1AF9421B5;
	Fri, 31 Oct 2025 14:38:34 +0200 (EET)
Message-ID: <3bc6f210-d9dd-4ad2-a28b-2d6f803830f9@harrastenurkka.fi>
Date: Fri, 31 Oct 2025 14:38:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com, stormux@groups.io
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Subject: xfce and notifications
Autocrypt: addr=elias.stahlberg@harrastenurkka.fi; keydata=
 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
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 54F6gp6UFOFFpZQ58eYbBJwQxHBSVn--xFK4uoCs3ks_1761914780
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       arc=pass (i=1 spf=pass
 spfdomain=harrastenurkka.fi dmarc=pass fromdomain=harrastenurkka.fi);
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi
 designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

hi

How well does xfce work on orca, is there a way to access the 
notification panel, the main menus and others seem to work just fine, 
but is there a dedicated key command for notifications?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

