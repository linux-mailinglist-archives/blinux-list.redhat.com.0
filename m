Return-Path: <blinux-list+bncBDYPVTOXSQEBBM6XSW2AMGQEHOTKGBI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 996609264B2
	for <lists+blinux-list@lfdr.de>; Wed,  3 Jul 2024 17:18:13 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-445034e4312sf454401cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 03 Jul 2024 08:18:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720019892; cv=pass;
        d=google.com; s=arc-20160816;
        b=gRsLfYm8U1cXMo9CoPSD+OVqBVq+w9joVwVjhXGvrj8SNLXx/xjlnSvmp2xN3A/wZE
         DWXd82m5kncR3C0P9pMUM+7ZLKLPWbrbzaAKd4sf2BOfkv8dCNkJ2JdfsODr3WY+pAXa
         2FbyKmZ72SNR+b1LcFfnbp61nJb192fOimv749ZhhYdQRBpt3hDIwzpMh5809AK5nE3E
         pvbppsAQrj4HB4MWciGZjxWg5mSohKkXmCMFXtxLRVAj90fy6ZblD/o6hddfzpWlcHyq
         2VytSUlT8Eo5LmsG8L5w6BJpk7JH7L9vI14j+yCWn20diEUgsxTeDzz/W5Y5HDKkNnXG
         MneQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=G+LNX7mbX31xRNmDDyL6Wi4kGJ0QYGm9sV9g3wSTgAc=;
        fh=c0OkIEKUhEu6lYuFGkq0ouMx4mMf97fk+wZ0RU5tD2U=;
        b=UDxH5ZH8AK+Fgprx1QDx/XOYbRD+/9ro1AXwU4UmjYwZ7u6ZX0aaPFoqg+R/Wuxd2F
         WjDIEhLI8OfTMZWuUPZwyA2MbC95F9oz7eEMqD2s10CZtWctFudScKNIqHvAlcyfDrPv
         uoVMRpzVw+p2u3d79ga8uLCUZriJUSKEZerwX7+NbOWahJJ75ktdjqkEmO02RqI3escD
         F6tA3l0guo9MOHsbF3ktAIqQeK1TbOyU9RugojTkux3/4w1kZdC0GH9Kpm2QTeQMLtvP
         Oq7JUzEIFNhlcdlQKOxZwQ692aweBkWHUTramOLKldtH7jYtun38X5qMaMf/aJP7RCRV
         gVqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720019892; x=1720624692;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G+LNX7mbX31xRNmDDyL6Wi4kGJ0QYGm9sV9g3wSTgAc=;
        b=bcgPD6mfjSroKtg4//eKu9oqkw82Jhg7zH1WScJIqrzhWQ+SxO8ICnPy7GZHW8A1y5
         Nx+sUxla3VT2ugNHc+mI6ZE/WKKxB86p1TInBehQ3GT/eAAJIBfPT6gKDJFHbAS0MpMT
         G/Fdm2d8mr8ajc1JXjhfMqL945GmhUlBPVxjC48IWHm2nsHIJhpC0TFhe0uiAfsKqWux
         6S56WyW6k7+ZqDTgCXD1jns4hFz0lnX/rfudfWjwsx4ZziINr/1rX6b4qQSK0krLVdJo
         aCRuky+1/7BBR5JVA7mztzLti3DYkBH4Qxb5soC1SM1T78Fj+v8vjEbX0yNRWs4+i8yh
         N0jw==
X-Forwarded-Encrypted: i=2; AJvYcCUOMsdCcHKsRbkCZgSgpy1bfCW0mOuTNuoQpBOqrSVxCmuQXgiN+thr+SUPSBEr6f7lv4cYTIZntbloJPdNe0TVtonSsNTpJ2MG
X-Gm-Message-State: AOJu0YwTEuj3KljkvfLq9MvqEXpc1QV6ZrPVr6d7UTTPEHfO9h9eSloL
	aoWWHppWpREmEeePb64s+BDH+RnOTpJVN00YysWzSh4IrNWEG7gRBnhXpCtiO2E=
X-Google-Smtp-Source: AGHT+IHepRAeEoZw3rrT75YZVANF9/JY1KpOu4aQIPIe5/i38zNTQraNt9N8Q/0Wzzyz/Pl11dy8gw==
X-Received: by 2002:ac8:619a:0:b0:442:1bc4:8fb2 with SMTP id d75a77b69052e-447bc4eebc2mr3661831cf.20.1720019892102;
        Wed, 03 Jul 2024 08:18:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:234b:b0:6b5:268:d754 with SMTP id
 6a1803df08f44-6b59fcf3617ls88445526d6.2.-pod-prod-03-us; Wed, 03 Jul 2024
 08:18:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWi52FB7gSPzT162iMg6YkeofxnSUfpzzGh8Xxm0KsNYVj7l2j902RnaHVnTC9c8k846eHoLb6aoG5Na6pfyYjlRTm3HWeiGAZC3q2l
X-Received: by 2002:a05:6214:ac4:b0:6b5:d73d:9192 with SMTP id 6a1803df08f44-6b5d73d9463mr74697716d6.61.1720019888977;
        Wed, 03 Jul 2024 08:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720019888; cv=none;
        d=google.com; s=arc-20160816;
        b=CgUoVvTkmPbSnmskmzfKnu4NoFYmMAZZABWRgz9Kf2yTVRrD4/LpqImHG829o4ZRtJ
         02E6/iHnKZuZUZcbx1JDiGMXtVA5caNwnK05zy0E+K2iriC3pihaHgLT7b4Vmx9p/7aY
         KSGYJwdT2LFcCkeOOj0wZ/ge8u7FBjF2yX7c+J8b1tvq+pBcErCRow/HH53OGv3Q3391
         dm/fq83JTkc85+E+dWSjTI69Qgwcu3B/SdjQXcwW5unq7I9cinXChXBoHHME7RvuVJaJ
         XPULOIW0GsHrZBYyPJ6Bp4Ck3LWdT0YZdh4tJFsaVoddHFCZzN75Ru4emmxpc79+YZxs
         uRfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=lfrECCqdxMPVuXM/m4/noiep9LhV+JQYutnAQSTS4Ho=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=FSyTANxwlqVobz4WqhxGGNi8PhavnAmwNkg8LTf9F/DP2H9bxad5Ewr2077cog6sVs
         /S0ize+WrV4jtNST8zI8SjXlbPHCVFaJh+bxTacYNI3DzDjV+gHPyrDyI0DlwrbaUU3C
         t06wvjhFkflN3jyX0azLjzA31Xbcl9q+uzbBmhwRgwFLaV17PGNL4djBCc7IuyqW++G8
         VKUPXIjihfmN6puv/vzr9QBiGa0XstsGRtlweQPylUvAXbV6L/g2pKLacaMzjZ/dhsfY
         cXH9kUv1taQuokhiyJNGldmD9ELNcT92hCabtklQOptXgJHYTEf+hAgVNbcr0I0wfFpD
         HMkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b59e5ec98fsi134714516d6.369.2024.07.03.08.18.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 08:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-351-iBl0gIXoOmyxNLeXIm4cOA-1; Wed,
 03 Jul 2024 11:18:07 -0400
X-MC-Unique: iBl0gIXoOmyxNLeXIm4cOA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A14941956080
	for <blinux-list@gapps.redhat.com>; Wed,  3 Jul 2024 15:18:06 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8E8591954B0E; Wed,  3 Jul 2024 15:18:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B7141954B0D
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 15:18:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 240EA1956080
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 15:18:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-358-GWocKsVWPCydLsGeWbfWRQ-1; Wed,
 03 Jul 2024 11:18:03 -0400
X-MC-Unique: GWocKsVWPCydLsGeWbfWRQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WDk1R3f1hzvTZ
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 11:18:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WDk1R3X45zcbc; Wed,  3 Jul 2024 11:18:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WDk1R3Tc3zcbV
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 11:18:03 -0400 (EDT)
Date: Wed, 3 Jul 2024 11:18:03 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: debian bookworm and wi-fi
Message-ID: <e91695f6-00af-6ba9-2896-b8f210bccc66@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 127.0.0.2
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

I don't know what the debian bookworm installer uses for wi-fi but what
they do use is defective.  It was unable to connect to the local wi-fi
network here.  I needed Jenux to get that job done.  There are two ways in
with a slightly different name on both ways in and debian bookworm didn't
find the second ssid so I couldn't connect when the first ssid wouldn't
work.  A little later on today I'm going to try connecting with my
chromebook and see if that works.  The raspberry pi 400 couldn't do the
connection either as a result of not finding all local networks I think.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

