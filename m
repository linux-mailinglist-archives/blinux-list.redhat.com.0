Return-Path: <blinux-list+bncBDGI3AUYYYCBBAO57G6AMGQEN63A76A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A461A24B7D
	for <lists+blinux-list@lfdr.de>; Sat,  1 Feb 2025 19:57:07 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4675c482d6csf55208161cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 01 Feb 2025 10:57:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738436226; cv=pass;
        d=google.com; s=arc-20240605;
        b=aWQjgQy2FOX4hTpA5B1owtFAZp13JApOZoiS2wM1vyjzTNhAlGyR/dB04MhtW9Iyp+
         6Pu4IvnmKge6K7PcrEYXkHYnh+IS0mQYNMa0Y0phcAOE7PlhX6ZV1WSM6N7vOSAC9OzV
         WPytFBCrhlp8dsR2R6ksElEXNkzCKW92W9iKBFzSPLtPI7LYxkueus6XbnTlwV9D7ZqL
         7a3r56RJGzmsZntVBpGwNfgXc/mLnh3MoGj8/UQ0EzD40qX49wVQKJhAofpK4C/aXj6S
         SUNoNmSoIOd/MddSpbjXNdhbWjwpOCZ8a1wGnKHp4uLkygoGUHGpYpoXyv1SabvorpBE
         oJwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=VmmhsalgvcOawXozNgiOY/y6H3sLkWZwKz3vDiAHRYQ=;
        fh=8CY6BEcLvscwIFQzyisfW5V4lwsP24cAOV4IyQTQdEI=;
        b=Qg7O0xAQYo33lhM9tSfnXTMIhh80WH3BQynQBxWgLei+cl89xr+MA9dcl6AKkWLpK4
         xvETZxH4etQQIg0QMynMbZLK4oQGEJCJ3ZgQlsGOzyfb73ptVLpfBZsPSYRVT+7tOWgz
         /xa/kLcupmWvx6A8cbCM4Nr54EA8w7IAyUppuL8MHCI06qOhtQ98Ar5ToAFnpriH5Nsz
         EFO+QhaQOXoxaFnM/zPThj/wG7a4z+IOSu52p0guki8zUUd6HMFzeBZb/hlwRPXSrt25
         yo16AfrYFIV5dURTog8qmQGifsB+ePfbsfble4T9F887uMt1iLP/9qb6DluewyjFQ21C
         NeRg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738436226; x=1739041026;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VmmhsalgvcOawXozNgiOY/y6H3sLkWZwKz3vDiAHRYQ=;
        b=r9sX7SYieoXgVfVD6sZT6jwkcGrYYwYbs8L8xDXXBDmLjsFlRIG9Ne6IJ7InkGi6Gx
         BtB140VqOTG7t/j7g/cRYwRDHa3hIFGLvJctU0UBF1C/03Z7e3ooaYzcq0jLS3jHRkfI
         QzyjUKFsSmk1qfa4DIXjnafCSJwWjDF5UA0SCUK7Amk4m9RiHeqcvk7YQc3xc3Zvuk9f
         uZxiby4X8rCRvhZj7r3xk6s1JuyRhE9yKReBCvHtjvl+MfbUF11BXv17ZliO0BzxUQnQ
         d5VlpduPvvb3h7xqO8IfHiFkBEm5L07quEbRYV1+lpBG7aFyjfCBF3vqveDz0Z85aVaM
         noiQ==
X-Forwarded-Encrypted: i=2; AJvYcCW/Jez3K3V0R2JjRBycl+gBtuaT581RDGLmeTaoMO88mwWPkvp38+eLwwupYquumiqtTp+0+g==@lfdr.de
X-Gm-Message-State: AOJu0Yx3lkfNU6qxT+1CS7gDCr0FSAKroLSmz0lMuRI/YsTjWbGrk20N
	AMV+QjJ2ta64yxwEZ5/2FIkmDGenx4IVqaCUctYgd43aDuXg6TJ2w3ZOY+HQJio=
X-Google-Smtp-Source: AGHT+IGwZpSfM9lPdii7b4FamfVbDRP/o7w7RuyNbKyPv+3xh2hnuaECiKandXowvJdFrMgIBN1nUg==
X-Received: by 2002:a05:622a:285:b0:461:169e:d2dc with SMTP id d75a77b69052e-46fd0ba3b44mr261480691cf.49.1738436226181;
        Sat, 01 Feb 2025 10:57:06 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:6d06:0:b0:469:63f:ce11 with SMTP id d75a77b69052e-46fdce99e80ls54747511cf.0.-pod-prod-05-us;
 Sat, 01 Feb 2025 10:57:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWZVaPxQX1h/9BQTN6I67pMLs+xcRT1PjX4R3vpLbJ9zZDrPVa35sxD+dFi0orohoDZwJUdKjkxwJvt4Q==@gapps.redhat.com
X-Received: by 2002:a05:620a:838e:b0:7b6:6701:7a4d with SMTP id af79cd13be357-7bffcda3212mr2735703685a.56.1738436225079;
        Sat, 01 Feb 2025 10:57:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738436225; cv=none;
        d=google.com; s=arc-20240605;
        b=DavCdUOCaJjFIC2CiWHnq3wkWXC1FrMrTnl7nsbqGX8WGPCKB3wse0eRFWOtgRPdwZ
         YzjMJTB2VOp8Ak/LJeVw5T2JyU3RJfIzvLftUJQC9+nxFHfGtjlnLiAGPOSUWq7SnneW
         q37TxRndMCtmxWA5BCAG7F47lkiTg7zblPOaOG9JUrrWcr80VD8PZQGNnvz8RjLPQ9mo
         1esMWKHKnGdnqOyw8/3atU9N6XeWmYEe8D7F3vxvAbQDz8+kb3GPsYdwTg6bb9Qinlfq
         8M2vJmPlA5tv3hz1z21W/qyifxVe+doJqzsXIkoZ1RPowUFAUjotfHPGNm6Bbl0SRw44
         vp4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=MEpHYfLVkKhoQ3QfDMeZseKJs7ol9rUVCTJyw4aQYTM=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=KH3EdcYL4jWGskYoXA9M2wkUjfEhcFuO/T5zADvJvtJdPLxhcXW40OXhXNAIMakX1D
         MYwE4bXg7Vho2TF1zrQa6JZNWQmKNz7SIW0ySq3MVDCh7/6RS7a9pvFfo/aN5CHeyENJ
         u9UXD298vwa4Xf/KDWBxr4tCxOmCT38HAREPI314wsAHn20rGRp+VSLx6OvlRWoCwEbs
         Kr4dncELqvrUeDeMuycSAWGnsnGrS549TJVz+dsUOMwmAkKterrfSBzRdIEKrjD6ehuq
         /srY4mMqb1Y+u5D9prRsrDeBwziY7UXZf+Rn6JsxP8bZVkx18Et/1BYUqldPKw+Y5rIJ
         2lDA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e411fcae9bsi8134676d6.183.2025.02.01.10.57.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 10:57:05 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-227-ePfCTg3xPzCT7TbNg3ujgg-1; Sat,
 01 Feb 2025 13:57:03 -0500
X-MC-Unique: ePfCTg3xPzCT7TbNg3ujgg-1
X-Mimecast-MFC-AGG-ID: ePfCTg3xPzCT7TbNg3ujgg
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EDA05180034F
	for <blinux-list@gapps.redhat.com>; Sat,  1 Feb 2025 18:57:02 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E8A0E180099C; Sat,  1 Feb 2025 18:57:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E61CC180097D
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 18:57:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 50AC8180034F
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 18:57:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-436-twX9RenqMeqzXP-7xhT4wA-1; Sat,
 01 Feb 2025 13:56:59 -0500
X-MC-Unique: twX9RenqMeqzXP-7xhT4wA-1
X-Mimecast-MFC-AGG-ID: twX9RenqMeqzXP-7xhT4wA
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Ylhnl1xZwz4vCD
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 13:56:59 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4Ylhnl1mX8zfYm; Sat,  1 Feb 2025 13:56:59 -0500 (EST)
Date: Sat, 1 Feb 2025 13:56:59 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: very strange behavior in firefox
Message-ID: <Z55ue2hdeBlXxmh1@panix.com>
References: <Z52ZSVy8qz18tDQm@panix.com>
 <CAO2sX32och3xLECCzV7ngK67xN4DBpZxBiXHBGTiuaYj6NDZSg@mail.gmail.com>
 <CO6PR18MB44199F98ADA357BD0F57FFD2C7EB2@CO6PR18MB4419.namprd18.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <CO6PR18MB44199F98ADA357BD0F57FFD2C7EB2@CO6PR18MB4419.namprd18.prod.outlook.com>
X-Mimecast-MFC-PROC-ID: j8XNvpSCUc-f0QunZkRHf4cY51eK_UmZncbAo7XzBzk_1738436219
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Bk23xwV5uMALCiUgcdV6lylpWkJaVMZiYRwEkZ6Nbsg_1738436223
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

Jeffery,
Thanks. Looks like I'll be sticking with yt-dlp for my streaming audio for a while.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com


>    From: Jeffery Mewtamer <mewtamer@gmail.com>
>    Subject: Re: very strange behavior in firefox
> 
>    Yeah, if you watch YouTube videos as Google intends you to(e.g. in a
>    modern, mainstream graphical browser, the video gets interrupted by a
>    video ad every few minutes, often cutting the video off mid-sentence.
>    There is a skip ad button, which is usually the button immediately
>    before the play button, and their are browser extensions that will auto
>    click the skip add button for you, but the skip button doesn't always
>    show up immediately.
> 
>    Downloading with yt-dlp or other YouTube downloaders bypasses the ads,
>    which is why Google and the developers of the downloaders are in a
>    constant arms race of Google trying to prevent people from downloading
>    and not sitting through ads and the downloaders working around Google's
>    efforts to break them.
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

