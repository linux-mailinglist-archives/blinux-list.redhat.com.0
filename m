Return-Path: <blinux-list+bncBDM4LSNO5MHBB6VY4HAQMGQE5ESACOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FE7AC7E67
	for <lists+blinux-list@lfdr.de>; Thu, 29 May 2025 15:09:17 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a43ae0dcf7sf8353781cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 29 May 2025 06:09:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748524155; cv=pass;
        d=google.com; s=arc-20240605;
        b=kFeKn5Kgrf29gZ4uB1pMzLrzmIZBw4vdX5Y88UtNe2KlGmsXKURpFb1tamsEu2VU96
         ahWrlq7bH94wHx/bkhTuJo8nuk/6/TWedDoNC34SKO9/ZgYxbMo3tBPYsM8krxcHAXBz
         PXMlecnbEX4zKo+BXHjooQgt0T6OhYND6p13IooUqkEVKMihTzUF7KQWOTIAScw8URVH
         4J1reAcTkXMa69yZmRvgqgenA4XW2OEaHsicDZmgrXeu6eOFSywwdSBSaOChlvD2/uQX
         a757cqUAXnsHInVpbKMaKpCmIwHD4A2iUlQ1LWxLy0QEe4eVt8HPqMNdSOIHcsGQVnrf
         EA/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=xOiIr+YwiaqAycM8WP21quVriCuWm6fuAIaL5N7li7s=;
        fh=LCSFT8lZwP0zdzdUlf9RKGuQrOztRb/D8/cU1wnlY30=;
        b=frwRdGbN56caxt77aE0FxoYkABIsZ7VAM9C4sZtgZLah7kFj7IeV9p/vU8WbET3/Tl
         +b/cbqSGcHch1HbHZpaU+/6OEHhIhgenhy6ENiONButijfao959wGLCwck8PzyrSOVLz
         OPjmpM+CvDpedLZFcesXDe+03lU6ibOtwo2rP5WJ/dnoYqrj1wIxlwJQn9rorLJ4ewF2
         jZRrz8fTWi0S+OSa1ubWu98UjuXnzvsqE/PDznLZzKHQuFB9y8sGu1QmGjDAt2A9Kbb/
         QRFK2YKxXZqVlZklkF8/sJNV8DtkU2SAZ77GA4lNP459fdZeXgsNJDGTvl21FuYlAqMi
         /Vmg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748524155; x=1749128955;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xOiIr+YwiaqAycM8WP21quVriCuWm6fuAIaL5N7li7s=;
        b=j6MHxayILJpvpxgR7QlaqTRCUT2RqY+vi/pRdlqNXqjLW6Rd+QMsKLSuMCLqB/qnmB
         bMmKy0PYRUQ4ObYSLbYcSMw1nTwsL79EsNEiUd9vBD1OvCbcYmri/Mhbb0ZrJb3BOICT
         mCJP7DgRjw0utlqFuC7xLaK/7240hspjk0vxIlKZOGTzDNeGz4byKguFsVMT6gkrxLtV
         8EhVdpxy6xe6lZwPADxrr/x/CssnxPfsTaHo11O6tEPULYl24/JhGIrfJoUnOum84fgw
         Dyjdaozsz1My0dxECe0qgmNa5iqP0qfr1yn5QXYpnZ1d4wWLwCKgZqWd9vzXgEx9L09n
         IQXQ==
X-Forwarded-Encrypted: i=2; AJvYcCVI675QNlQPqxMccDdivkefxLSUI0PHVb5RbQVmpsnfDSQnmjBL7qCQhQpCRnwFVV2BTPWW/A==@lfdr.de
X-Gm-Message-State: AOJu0YzD6lotzvhrevvLl3Y+FEnaokx6qG50FT0OTA1shYUzknaWv8b2
	7gNl86pGfS/5zGEmaECg81X1/kjQ4JCJc9xzFcjfnf4SbA3rG1Wd+XtHnARSAftWc+E=
X-Google-Smtp-Source: AGHT+IFm1AqactTqBd0R1w/pQt10MWCzxJvOuMRZ4SzVp8pDKjcK3vlqjBNvloZMl5HhMJd79FIpkA==
X-Received: by 2002:a05:6214:124e:b0:6e6:6c7f:1116 with SMTP id 6a1803df08f44-6fabf2c2778mr83435116d6.24.1748524155043;
        Thu, 29 May 2025 06:09:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfsfREgCIfZZsGwK3/BMqdmibbkjLlLdEvuniKaYSm4ng==
Received: by 2002:a05:6214:e47:b0:6fa:c3dc:b004 with SMTP id
 6a1803df08f44-6fac5d6ea5dls17263156d6.2.-pod-prod-01-us; Thu, 29 May 2025
 06:09:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVFtpl6DBC16+C8QIbreEP4UmFHGrLyvOpPEhvTOIaM0M9AwpEgoSuzQlQm0oyLdmvWCqWH+QWPntYqhA==@gapps.redhat.com
X-Received: by 2002:a05:620a:1910:b0:7c7:739d:5cea with SMTP id af79cd13be357-7cfc6097f36mr917750685a.35.1748524152597;
        Thu, 29 May 2025 06:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748524152; cv=none;
        d=google.com; s=arc-20240605;
        b=Z6XOpjXWQePiZBwhoH0pbF4wIk5/4ZXu6x6FMePpC4W8uDH2dAiLbfp4bI1HD5sTdd
         ARwy765x823MZxRMeaeR92Iy+WeXGVEeWx1xGirMVv9DrqfMdh+UEi5uw1myrnkjNxOt
         n9KKkIOgmevz5Qo1ShRG60Yw/a1vLqcsF+L/lzbCjxVl7e3vvwOHkfj8skeC0PT8Zg+F
         JcRno6PkmNWFQ5pI1v18vamsYroqoamyEFeep2aT06gzNTvGhD/6NCnlbhAKByWKiwId
         3kO5AAmXyt/V5Xxl2W/R/vAx+SfvTvDsiqqdZ7gsb58MuzhoRBJxcRmMBIHqGv8/QZk5
         36vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=9BnjO7Fb3gIjn4ZptysacQdhahmWD9q9VS3nOUeNT0c=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=OVamahLXA6+eCZ6DQwBkvvSpH1zCvV4YLRoJQBmB3xzXM/CQRLX2E5euk1E00Ag/rJ
         6NipJBE//ZE4v71Y29TLOAFhdKFcjGwxkNkIGB6dOn3hmaQVLC0GlmSAzheH+DmVXPwx
         ijjtxiUpfYC0D0sRs946MSNnyIb+Q2/scLh/LPCSs6mAItzNgYJh/fkdm4ti+PvfnZz1
         t/80D7rGsa3MFoUVePif5YwsP1qPvPR+m+SAc2vbMbwzZTUE46v1SDmTHB/onIJLqkia
         vcldgkRtWnitObSrK7o81FnDflm+b47Gn98cJr9EBswPxNZOb4OpcnRoqJxL4tRvbMbA
         FHHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d09a1fa3dbsi154620485a.347.2025.05.29.06.09.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 06:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-161-ujc2qcfLPNi-k_NZsaDA_A-1; Thu,
 29 May 2025 09:09:11 -0400
X-MC-Unique: ujc2qcfLPNi-k_NZsaDA_A-1
X-Mimecast-MFC-AGG-ID: ujc2qcfLPNi-k_NZsaDA_A_1748524150
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 573DD1800446
	for <blinux-list@gapps.redhat.com>; Thu, 29 May 2025 13:09:10 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4DDA21955D85; Thu, 29 May 2025 13:09:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 440431955D82
	for <blinux-list@redhat.com>; Thu, 29 May 2025 13:09:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BE2FE19560BD
	for <blinux-list@redhat.com>; Thu, 29 May 2025 13:09:09 +0000 (UTC)
Received: from mout.mail.com (mout.mail.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-228-0cUG53kvOSmzUnH5fiJ0Cw-1; Thu,
 29 May 2025 09:09:07 -0400
X-MC-Unique: 0cUG53kvOSmzUnH5fiJ0Cw-1
X-Mimecast-MFC-AGG-ID: 0cUG53kvOSmzUnH5fiJ0Cw_1748524143
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([193.74.50.9]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0M1Dig-1v9HhV3n8i-00vkkX
 for <blinux-list@redhat.com>; Thu, 29 May 2025 15:03:58 +0200
Message-ID: <ac090d7f-aae5-4c77-88cb-f417ebfd47f7@mail.com>
Date: Thu, 29 May 2025 15:03:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: pi 400 and orca
To: blinux-list@redhat.com
References: <66E77BE5-B80F-40CF-ACEC-4543D71E4256@gmail.com>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <66E77BE5-B80F-40CF-ACEC-4543D71E4256@gmail.com>
X-Provags-ID: V03:K1:YP8lcj+EOMVLIEr6KIrJyp5yrSSHI4Q01KJvOVubehJbqrPjs6x
 QVbLpl1/YmI/oZwOI7T/neyYzm+dTh/WVCHLdjdBrFJHiy1SAeMB7C8v5Fq50o7hNNpRdaM
 V5SNsEPLq9VHL7ovK0WDxH2rdt5fE42X4pi1z/UFjiR1ryBo4VWsWPgI/9cPmA2336QLXn1
 lWtL0aPZcQdeFFTB2Gmfw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:7EpXXmSulho=;RFOoQmtlnvLw8rBmCqaaNbGXuJ4
 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
 ASQcqYFijw5Ck=
X-Mimecast-MFC-PROC-ID: ZRyXugxVAnqW2Z7qkBepiqBXxYMaeN6wWs1I-8hXIaY_1748524143
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Plk00EZlMw8vLCtahs8aOqEAdy5Tewh3XA-bOoCnvbA_1748524150
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 5/29/25 00:52, Daniel Crone wrote:
> With fedora or ubuntu on a pc, the system needs a monitor, even though I have no need of one.

Actually, you can install a headless distro without requiring a monitor.

> If using a pi 400 must a monitor be connected for any operating system to work with it?
> 

You just install the distro of your choosing and than boots it up in the 
Pie.

-- 
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

