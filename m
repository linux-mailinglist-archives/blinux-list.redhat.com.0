Return-Path: <blinux-list+bncBDYPVTOXSQEBBZVR7S3AMGQEW5IZFMY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6B0971E70
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2024 17:48:57 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6c517e32a97sf62070546d6.0
        for <lists+blinux-list@lfdr.de>; Mon, 09 Sep 2024 08:48:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725896936; cv=pass;
        d=google.com; s=arc-20240605;
        b=KiNjvdZmXHq76u755jNZo9aAGB+w9U7KqlG3qewT2sZkp8Ni8UPqJz3N2d6U5pkF0M
         bGEemjQeNEr2FrFgkbrurgsUp+b/1kRv6hG2f2n94uxmBksqryb4h7Hcdj2nDz1aOM4u
         5KL7GEibR/9NwDnccHqPrelBBX/s55K3j21YWNv2tUuT2eA++FUS5bjhMBoYbbut2okH
         ZgMNCxqXc0leb2qDmiiub36eNx7Heq8gtT3hVVkPLIGN0se7J8NdV0o92U94wO+Nuxhw
         Dm0bHr9m6JBOB2b5Z3+zN8isF2/rBv7fK+3RDJak3xU2SQsCEhoLgfoswVie3Lb3hqCq
         o+6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=7Pogyhylar2e8AcSN10/1X3QVLKxoppTc+nOOK+e/Xc=;
        fh=HdJ1q1osD9TxeqstT8rZA0MwqOQfvZjgSsm1fZxh7+E=;
        b=aol6eKRhBws0dEcq3zsE+dUw/XeHn2zURZDd+w7+dLvzSzsqaGVqEiSklUkb0NXvLa
         3S20jpB5UJDJv0pnjdPVMvOJ9BHryJgpsP/SFB6EmGlMzE9uMrnKdDTS2LlBqGsHtbn2
         reqVkPGqsGcQyJ8LhS+9e1hYqfwx3dMJwAULrNtzb07alTPH2U5Pd2DVNh8D6WyjdA0o
         sTPzaEHnVHf1E6dSwzt6Ig8pfi9pIOiWQOjzd8D2Ss2Nzg9cAFy9lFSjixpcb+bTcdfv
         Ek2U5viazf7BcxaBjvTMw8MGpfFyLC9Oj7wElO+eGvPbW98zHRuZ9PoBVEUlvlJ8auz9
         RoCA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725896936; x=1726501736;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:message-id
         :subject:date:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Pogyhylar2e8AcSN10/1X3QVLKxoppTc+nOOK+e/Xc=;
        b=kxlQctJyKXpBFpqwagPv3ZifMBdsCykaWLBdJo+hmipGYVnFEl+M2USAy71NzhXgH1
         B30WW6TY5FH1NS6rQp0YAQGGI3+feKQl6KTjAivQRK+n1fc44TgZduIJnLc1l86cuOcW
         tHbgg93S/Hj29XSf638uyRqwc8h9RlyB/cGaSXPLSgjy3W/kHHF9B4aOeKVFJiyrWPns
         /Og7EFL5UY6jxDql5xs/soWvJlhMuWskwVLE0nmPrVP8hR7logwKNd+rJeUhvFEuwHIZ
         04ok7NsXSol8R50nVLR3jcZOav99ZUD29nv78Ei4WCIAtmegCRaY/2vNQCWqqgbhf3wT
         Lmww==
X-Forwarded-Encrypted: i=2; AJvYcCVTMHTCz8fWOdA11CNEJEH50KVt7J25R30BqSDRTqvxr5u4xvVX/M+XxEDjiaohvIRfDAwyJg==@lfdr.de
X-Gm-Message-State: AOJu0YxyBT1/aH6Z8qiby/9THzfCzk0uGuk+4ucr//3C/WM9jzrfrAOT
	ewz5vVv8nQ+O49e7NXHWoxr8NTQgGu+0yikSkP9FgBDs0EP1wbW2rdzjja6faJU=
X-Google-Smtp-Source: AGHT+IGpTmMrpcKz3RlTUfLG/bWh1tUZ/IKA5H/W4TAVD7mdjYHLCSWW0T0jq3WXweKW69pIrUyA3Q==
X-Received: by 2002:a05:6214:2b50:b0:6c5:1e85:2000 with SMTP id 6a1803df08f44-6c532478bfamr81837826d6.42.1725896935302;
        Mon, 09 Sep 2024 08:48:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:e82:b0:6bd:735f:a702 with SMTP id
 6a1803df08f44-6c554b1ae77ls505566d6.0.-pod-prod-03-us; Mon, 09 Sep 2024
 08:48:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXTx0S8BZ52EIxyZL6sjbsLerz4T38kdIOT3hFVVDNdJQRJCZeXUradXr1bN9E9iN9wVsQTQOrSONnttw==@gapps.redhat.com
X-Received: by 2002:a05:620a:2906:b0:79f:1f6:ab9f with SMTP id af79cd13be357-7a9a38c8684mr801019385a.29.1725896934240;
        Mon, 09 Sep 2024 08:48:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725896934; cv=none;
        d=google.com; s=arc-20240605;
        b=ks6ID7PwJm+D6XMLRpymWUND3FrPlgkIICmvNmCrXPaz1in+Q1i9CogT48rLjWAQaw
         Z4IgIFIogjC7P5tGK1V1smwlqHbj7ycuSXWp1E7L9MtQJjbWx1sMy7c5p1PVhmyo2L47
         +TlwVccAz8RLBXqdMnG2asumwGxLhIqMxi2NdxbK1TccLLSml7s8i9UmCp6D4ZovM3pj
         mM44Jc5zxkQhxG2jA4kcz3YXor8KFzu24MoRVxKqtcRJi8nATbNEeZMlOli3y0YC6DCb
         dH3IYenjUaBa2/aDQSUvCwBGg4PFqoUN8uwyaiOqVKh05ec4FSq518u3JEi4KLmolbri
         jx+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=gIZrd6NMfvyJMq8RBqt0DHoqoozHCRXmSHiaUL9y5P4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=DnJVgwftMnV6m0vf723IQmzU1yjFpnoLmQf0pz3WueY1KuUW0yyZVQkTPl2rprP9pe
         W4Ew7WAhcBt/hoQiWpQO25oR1kyYvf+o+5jouI5zK/dBb6/TL2E+7Z1qenLmQrGMZ88B
         LmVT20FHJTaQyeeM/ZCqW6JwYgynRkx7iG4H8oRw4iCfrpwGLhDq50scwMO9sPv+yAw4
         jY5/Gx9rrzaWdoDrlfvwSZ6zA5GOUdfbVbtv2OVrNW7DpJ0zImyiYc7bS7IVNBU1uFE1
         hS9dzjFsgpmZSxuLI5c/sQC6L5AfCoAQkJgLfi3+JIMzTHICd0SF3uFTxoAXOXpu119Z
         BBZw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a9a7a5b9aesi589969685a.689.2024.09.09.08.48.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 08:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-608-co9krUu4OniA410WiP987w-1; Mon,
 09 Sep 2024 11:48:52 -0400
X-MC-Unique: co9krUu4OniA410WiP987w-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0F76C1955F44
	for <blinux-list@gapps.redhat.com>; Mon,  9 Sep 2024 15:48:52 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 09B33195608A; Mon,  9 Sep 2024 15:48:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 072F21956086
	for <blinux-list@redhat.com>; Mon,  9 Sep 2024 15:48:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6B07A1953953
	for <blinux-list@redhat.com>; Mon,  9 Sep 2024 15:48:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-491-yiDrmO7CNvWMtDZWwOj0JQ-1; Mon,
 09 Sep 2024 11:48:48 -0400
X-MC-Unique: yiDrmO7CNvWMtDZWwOj0JQ-1
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4X2WTX4JYMz14gv
	for <blinux-list@redhat.com>; Mon,  9 Sep 2024 11:48:48 -0400 (EDT)
From: Jude DaShiell <jdashiel@panix.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 9 Sep 2024 11:48:37 -0400
Subject: any chromebook users here running linux on chromebook?
Message-Id: <2A086636-DD93-48C7-AB8B-146614201E15@panix.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

 page chromevox complains too much output to announce try reading line by line.What are keyboard shortcuts to have chromevox read line by line?  When I open a man 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

