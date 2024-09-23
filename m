Return-Path: <blinux-list+bncBCFIHJ744YGRB4XPYW3QMGQED4XVIZA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB7597ECE6
	for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 16:15:16 +0200 (CEST)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3e285c8dca7sf1350761b6e.0
        for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2024 07:15:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727100915; cv=pass;
        d=google.com; s=arc-20240605;
        b=YXlZzwoATARM0RBku9zi78gpkaA6Te5rQ8skZ1DF9g/2FzbBmNU9k219bus6r8mFbP
         wGCCU/w7poJNZZKrn9pBYTOSBeiUf52HmLJK0C138ay42gT/2COS6YwaCZpINhMDlqM/
         AAhPo7JzWNYzNXWpH0sn2aGa+Cy6HLLcC0CSC7o2WjTRXTL4epirKT9m1lLNhOHOnaig
         FY4YMie3baw8jyA1zMYpsh3dtPgVeTBxWM86SZWyaDffyi1gyiHnZUYNYqjWaMPMqMC4
         PRD4u73LYLEy0zMuY31yd5n8fkX0Ue/3i4GIQaj0yPKA22bnGIYzSUnA5AMWLZ4+rrB8
         rZEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=tnu1HDrD6SMpfHv7idFfTvHpaMDj2deoO/tJ7FO3QrE=;
        fh=lSA830kBIkkEwVNbe4coCE9r6CEvytF4FTGgObYCpsk=;
        b=eqH6PcJv9RZsK0gDVH35Su4f1LFDvK1mjKAoPyc0/EcQWoteevdtqpIC0JRZcIyT9a
         MdcNjaTrjBiCNyqvIfO36wrP3S0FoS6YoIwZ591LP4IhgwumEytkeZqyJGJ6/Q9dSuOW
         X942MJj7cE8+wewTeXalg1Slk2EmfiFGCmAGxwqDo6g2dWGIrisQCI+MOYDY2kGw1J08
         i2MQ7ZS/PXzNDiTFrNGWW+/9KOi2CG/udpjTm46L+Y4mrX0+joZUXQn3riQB1ySI6mJD
         BoPNiffyb23C1MBx3ZYuypkdXkHQlMXQRjPklUOb3g5ZjTsLbyangBzYEHr/nuilnhFl
         oz6w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727100915; x=1727705715;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tnu1HDrD6SMpfHv7idFfTvHpaMDj2deoO/tJ7FO3QrE=;
        b=o1+rCSsuykLxiqVyzQdq6ZNJYkmt5hLRHs0BYm2GCO36w46NTIfAj6DaHFRPE6Pp0V
         f05eSI/+FZgtR9G6MBCV71yN6BjSI+H3TIM9Ep3VSV4u+/ukOKysCx4sN+NFPpLm0TSz
         KbZYWhQ3iqMwFNOIExeH4HOjPZEaytKPTvuywF79I//JLpBOZIninG8XJpuYSXCUq64a
         9d+TWOJ5hE+wYR9gU9LIwfR1wa7fWFv8Xe68v14OHIlU6E9cjnauHvRrTiX1rqY9crZn
         IiSkkLr6xdnQ/e3YZ7i6kXhSNVSpp8mj9BGj/JYPqT5B+Pf/m0z1cdlZgw6WnMEVI9UM
         LyNw==
X-Forwarded-Encrypted: i=2; AJvYcCXHZbZnIV329xx7O3ProXyWxhPb6eS9qYv8smd347qIcRNCrG+1PB0Z18qgFwO16++bV3MlLQ==@lfdr.de
X-Gm-Message-State: AOJu0YwbWO2M+R4RQZX1vTk3L1rxHZO+mQOP22Z3QyStivTcPU6zm10V
	vw6QFVkAub5ljI0H2k09KGA50I34ssvwti981ldr9gthXt7+WjP8gQUUiTYO/Gs=
X-Google-Smtp-Source: AGHT+IHNTFu9N0e+7j6UjGDs2+Jo7hIGX7VMY5S1MPlY34mmC8LDGC9JjJibAvdfi1LB5FeS48sfJQ==
X-Received: by 2002:a05:6870:8611:b0:277:e40b:1aff with SMTP id 586e51a60fabf-2803a5a809amr8485484fac.9.1727100915117;
        Mon, 23 Sep 2024 07:15:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:9d94:b0:24f:f4eb:3558 with SMTP id
 586e51a60fabf-27d0934526cls610500fac.2.-pod-prod-01-us; Mon, 23 Sep 2024
 07:15:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUyClm3oZZFA4puumHywwnOwfRuSca8h1v6YFy5ogIaCnl6RuPO84eFnMGJ5oDHqRhOdsRE1MBvi/uLtA==@gapps.redhat.com
X-Received: by 2002:a05:6358:7211:b0:1ba:426f:f2ca with SMTP id e5c5f4694b2df-1bc975c4b13mr459151555d.1.1727100914098;
        Mon, 23 Sep 2024 07:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727100914; cv=none;
        d=google.com; s=arc-20240605;
        b=K6//JcyNIcmTAd3AOHFMYms6UU9k3vpl4kT4rBf8G6JFXplbWn3/D+hIuYXhY7vRGe
         GJ13SAO7JaLWwz2wqCXdRHOu7Kx4hGtMdan8nMOtuvd8m4oc8ltfhlY5vh+Zpud2fgoJ
         z2axipYtCuGyrUy5UMFj4wkStOz7ms3yu9sG67rv1QZUgIWaTqWqaL5pk3oku3NhhS2T
         t7yGlQ6Rn7QUj03JCKE10xTR8K9nikTMdZeZrzgpXjEqqknWNj7WFsDXTfWzAKz/KUnt
         hmXvy1QBYxEXmterYh/7yBg8WBrcXVeMAA88Y+kAXKMzb+EI/DUCTwlV0JgYpqriMZ6j
         /AwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=ZRYv0h56SPvYtw8VL7Z0OpMJ9QKM83A+YajSFP34Cck=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=TcbT0iNBNXkAWbgQH4vMo8HW9O8iLEtFtE+xvF8/9t3kcsuNGMAbLB5H3k6O3P24p7
         A1ijF7rbCdpKyPPlj2QQzYCY0dQJW0Q+OLnoi27kBuOGjRzyI79a271Q3Lw57Y9W7wac
         9RNCuOTwk1Em/pDv5tYIx8a1lXzx+HtI1CWvh+zObvoDpLMQRaqjg2cH/DO6okEwt1Yx
         MNTjvEo5AHxisSdZguW6sy8JfqMP8qTGPlhs0CGUYqoYGxP5ezH2af/7j1wJTu+7GNbM
         B0WaSahRgxHK1NShfuwNQnKslu5kFg8WVwJf1GKz0XhDyY/YVURhTu94eTk4YV4Klcvs
         2mXw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-49e6b0fcb82si3407908137.94.2024.09.23.07.15.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 07:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-249-fl2aaWZLNeqFsP0JM5GyZw-1; Mon,
 23 Sep 2024 10:15:11 -0400
X-MC-Unique: fl2aaWZLNeqFsP0JM5GyZw-1
Received: from mx-prod-int-04.mail-002.prod.us-east-1.aws.redhat.com (unknown [10.30.29.106])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 02A3218E68FD
	for <blinux-list@gapps.redhat.com>; Mon, 23 Sep 2024 14:15:11 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-east-1.aws.redhat.com (Postfix)
	id 7E772203281F; Mon, 23 Sep 2024 14:15:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-east-1.aws.redhat.com (unknown [10.30.29.86])
	by mx-prod-int-04.mail-002.prod.us-east-1.aws.redhat.com (Postfix) with ESMTPS id 7C189203281C
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:15:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-east-1.aws.redhat.com (Postfix) with ESMTPS id 55D69202BF9D
	for <blinux-list@redhat.com>; Mon, 23 Sep 2024 14:15:10 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-655-CzIgg0UaMu2uvtUJsqZaxQ-1; Mon,
 23 Sep 2024 10:15:07 -0400
X-MC-Unique: CzIgg0UaMu2uvtUJsqZaxQ-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 35945a02
	for <blinux-list@redhat.com>;
	Mon, 23 Sep 2024 14:08:27 +0000 (UTC)
Date: Mon, 23 Sep 2024 09:08:27 -0500
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: Drives dropping offline
Message-ID: <ZvF2WzjFaqSQkGgw@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <20240923.133713.763.40@[192.168.1.100]>
MIME-Version: 1.0
In-Reply-To: <20240923.133713.763.40@[192.168.1.100]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.29.106
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

On 2024-09-23, 'Rob Hudson' wrote:
> I run a small data server with about 9 drives attached.
> Every so often, one of them will just ... drop offline, with no
> warning

My gut says this feels like a hardware issue.

Are they all attached via SATA or are some connected via flakier
methods?  (glares sternly at USB-connected drives)

Is there any pattern to which drive(s) drop(s) offline?

Or to which connector it's attached to?

Have you verified that your power-supply can provide sufficient
juice to run the drives and whatever other hardware demands you
have if they're all drawing their peak wattage? (graphics card,
CPU, RAM, USB charging, etc)

-tim





To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

