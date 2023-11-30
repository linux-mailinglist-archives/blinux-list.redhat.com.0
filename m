Return-Path: <blinux-list+bncBDYPVTOXSQEBBDHUUKVQMGQEVHU65EQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA5F7FF633
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 17:36:30 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4239047911bsf15879451cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 08:36:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701362189; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldY16WFzqX51+31/mRC9nvVv3bikxdCdkWVtSYOaV79XTiZ5S+kBjfC2XCp+ICtJC3
         2GBTEJjRIw2NllkS7STjO8VflxRQYdU1+1YzTYG2ivB4awVmkDtB11s8wyVMVD7ktZg9
         oCxDTR40c53gCNND/khsVJk0I7W5sGiXK7pf6WwqbbG1tGuS/b/YUJpl3XvAa+GOV0a9
         W0AMid/1TjHt6NnIQUI3slzG4QjFvLlPShmaGVpKZBv6LvPhITJMC8VY24LSt48yB78d
         Scppryg+1sJZrpLQNl0Dl2UwIbZnBvNbD7a1Hx3aBGNMh1XpQFpvxmyGzvmf5v36C+zV
         AbFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=y3OqBwQ6n3CiITE14bYoqnwyq30dnJ43y99IfXgnZ2Y=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Sau0jOjD8bB9ArgsmK7iL13DeA1hATg+BgRe6aQrnTMUCi3xR5dX/x96eVidoYkoqt
         AVvTLPjz9yQPHA9uiUw+IMbHn2Hh4sJVqVlRooYbRBP65PtX/QIeZoRCSFyjOT9y1PSd
         qaXY2SyrnSAuVhTHjKhJb4mUjWU/ki9MWPKNc5EYld8emjGWrjpk7QqK11Jddg9rXbnt
         jI2TMMO+C4RosXIPECqGaZfqWco090cse7SbIkaV6Q59+RVbue9PCEjKlsSxTIxZlvNn
         W++v9KY+Qqg6iV6AzCrmwwYiX4mZpcsMM6uw4JZpJ1grD0h3uZN2h8BKKOsiqb4aNwXt
         2IlA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701362189; x=1701966989;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y3OqBwQ6n3CiITE14bYoqnwyq30dnJ43y99IfXgnZ2Y=;
        b=Q3dCNdOnWd85M/xBKVjUq/IwhH6/H+S7+mHdaTyGYZl82gf6pvokr3yMnv8v6qUliT
         voFiPRuKN/vyBKfqti3k5NMmOF/tXEu4QhdpJ16ne3/Z2hSvdJCmzlBlNjRZdPWaJES2
         lh6YIOp++kiQViVQZ7cGhW7wqqvyj/x2OGCulOfUvBL21qnYT+LDSZKUUyi4VwZi1fX9
         i4AlQlWV5FEvdk0yoHv1h5bkX9zv4c6VGcZYb4Aw5e+H+fSL7QPtHsM34bjaPE0b/6Ek
         Cu8qWM6awf4zfyYhxG8eMC75yYpfHPbIpV5NSsFErhEqni9CGZ+dgxS8Pidi3sGltEtn
         vk7Q==
X-Gm-Message-State: AOJu0YwEyWHLPsJFbwbkARUpfGgU2gvHxGi0DD1xkMLmQRoCasA4NeAk
	PA11QEILyY83AMVJU+1uh/NGuw==
X-Google-Smtp-Source: AGHT+IFPmgl/xp6BPN/l/Ys1QlwdJb+esE5ncu5wkjv5D1sNXlo9Uf/31Vds8sGwr7VGvmREWKjcdw==
X-Received: by 2002:a05:622a:40b:b0:423:7588:807e with SMTP id n11-20020a05622a040b00b004237588807emr28202659qtx.35.1701362188566;
        Thu, 30 Nov 2023 08:36:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d01:0:b0:423:a0d4:8c4a with SMTP id f1-20020ac85d01000000b00423a0d48c4als2049612qtx.0.-pod-prod-03-us;
 Thu, 30 Nov 2023 08:36:27 -0800 (PST)
X-Received: by 2002:a05:620a:27c2:b0:77d:bbea:7ea9 with SMTP id i2-20020a05620a27c200b0077dbbea7ea9mr9973989qkp.20.1701362187646;
        Thu, 30 Nov 2023 08:36:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701362187; cv=none;
        d=google.com; s=arc-20160816;
        b=fBePWQhr8MquIvU44jFaakaVNTQyr5nADT8kd5ilYRBiPnylnUmtDbvHSYGGAWkFpX
         UDwq9aBZ8F3PQGt949t8thSEGHHcEbdJT7auZRJdDXyAQCdng7AvOT2lQyZGVi215Z8P
         PPZghfp8tB5sMq160MIy5OZTk7WxUgnRFo20Cwyt9ptJ2eqgWOnnW0SszJmz3woYSBcv
         DnnY141PhEapUl3r5cO0JO2F8FLrakw5ILZq9tqcxKxe6TxFGRi0ZHeq7GPyacFK/LaD
         sFBtqGpfOsa1ZIGehvre4COYeYWvcjLQjsxVhglf6cWwTV8gjBjc7LmLXVeHOWilLjC3
         SZmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=8BoZqGxcQSo1wCkIXu3OXTWNkl3cG01tiIfnoABN1cA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UmNONfgsrJbW8qJWJxPSHSwp3WusupjxNLPE0zGUuBvu2avek71C2gu9QwBNtC3XTJ
         RKI5FVr2jGh7eRsSRI994fqhjEhIlYrEOgFfP/QjoR0v49xHeyyAPxrhsGCjnlnLPCrV
         4HpXIrkQ0QQQdfA3z9UsBVUz/321Cm/DWn6a08EAsabsZ+2fT56cpGpLlSXVGaCINhvi
         3liJQGrfboJSPpA53EoECPClfifm20JZyx3ctHK00niMJRdBzdbMVqAVrmMzK86Ix8cU
         9tI8vgt3Zl3hTPKLRJMBLfYDnlnv4osC7iot+z7MaUw9Ywucj4Viy8Eym/gy5ytrZtiF
         K2Xg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id f7-20020a05620a280700b0077dcdfd9eddsi1397064qkp.56.2023.11.30.08.36.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 08:36:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-601-cqC7HfNsPf-JkCqVXoXzug-1; Thu, 30 Nov 2023 11:36:26 -0500
X-MC-Unique: cqC7HfNsPf-JkCqVXoXzug-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28CB6811E7D
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 16:36:26 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 25E212026D6E; Thu, 30 Nov 2023 16:36:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E9482026D68
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:36:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F191D82A663
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:36:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-441-vY3N8ALpM4m5X6XCIlVmkg-1; Thu,
 30 Nov 2023 11:35:55 -0500
X-MC-Unique: vY3N8ALpM4m5X6XCIlVmkg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Sh1yp653hzN7h
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 11:35:46 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Sh1yp5g7gzcbc; Thu, 30 Nov 2023 11:35:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Sh1yp5ZrZzcbC
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 11:35:46 -0500 (EST)
Date: Thu, 30 Nov 2023 11:35:46 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: links the chain stinks!
Message-ID: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

the -html-numbered-links option on a command line does not work no matter
how it is entered.  The documentation is vaporware.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

