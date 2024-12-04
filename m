Return-Path: <blinux-list+bncBC3NDNGRUAMRB26DX25AMGQEWRK2DFA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6279E3061
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 01:27:25 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-466abc6e8f6sf94136471cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 03 Dec 2024 16:27:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733272044; cv=pass;
        d=google.com; s=arc-20240605;
        b=PIC0Z7NnASYKNrbNEshaOLCJBZcZKtBBcgff/UJOHdXGbrLWsas+iQMKxwYBFYa7JV
         9r3yYImbJ1uIOE8DHAs0XMLYPUQKMF7fezQjAqBN22B08e4h9ajlGIcb2PvNJ7Iynh8p
         jV/iz6+0L1LRzbzH7pDcgZTzWE6K8WACBnV09yLQ4Am8UlsNBXVwE6aPcZpwjCIz90AC
         6m4mNLISyJLnTKRWumM06BuhWq+W9nHDeSkESCeyHGEYNVlhGhXBMHnRi8UXqJ/3wmDw
         riMgMTrAWx+oxCTMAzCL3c1iaT7U8Lgt0BkyT1Lgm/JorLw1oPtYgvAez5F3E6LaX1+k
         Dqvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=ZiFaXdEMlOIhTSflGDspl2NFEXKuS3SPjKaIWujCBGk=;
        fh=672DTKNF8xWRnND2fEkx3pRrkvMMzJkD7hvmgxmU1aU=;
        b=Ja9wNcfy6Bczvh0bUf1WnJohuPw/oRAqqKNK10EfF4Am9OaoO4n/7CHIRcQEimJ8oP
         FGvHioHueKw+eU2soJb44golt0q3yVQA/AEbLVolAdZmX73QdCxqALgiW1awyBc8oeTQ
         Zyr9mA1k9MNJh6TLE3vSV/Jn4eomMmDDtMzV301UcR2gFDwgCAP8E5BGLdltLXBj1suQ
         Wwvs6xKEIY67Ri9IYThSYJboGxWS+m/BLB2VDNFqE4WjylOlkQyM5AeTIFJ3A7bS0Tq7
         k0e3Bj4NLHMW2Y5z14kgRxdq0IA65/n6Hli2ElvT/17JNIy6SCCCEnuJih8ietmUCkNf
         O0Yg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.155 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733272044; x=1733876844;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZiFaXdEMlOIhTSflGDspl2NFEXKuS3SPjKaIWujCBGk=;
        b=HNfnrUWyqGAgGTR5ZP1H2XxY3TLpIlV1qkYyhnsTjouQFSEZn+3N6jWkkBgxcwGXYJ
         ppw2A5Ry8nIuluFbq19pSnpCTO8nsn7hHzSjiIakVRMbR4xQScwOhfNuxAPs85/eSOuy
         I7eOsq+DRZAW2BMWIgIu1FbrvcFIr9DWcPzRXWWYSv+/mBjxxaGfkLt5nof2aqgLnS42
         LjRF/4A359LDyr1CpgexvVPSiIH7PUtldZP/Y+8FtgeoZBJf8JzMrQ4Ah0ATPfLra1Kt
         uI1ELZxias4zf4HJKl+tdYcpEJ43sq43OBriAsT3LnweeOA1x5yqxMcYY2eiWpogMcf8
         RH0Q==
X-Forwarded-Encrypted: i=2; AJvYcCX2VREvnHAkvbgUTfV3DUDP9AOkjGGmCD3tq/EV7cNdN01D5DG1nMm8v/YDrcSdtU46vMt78A==@lfdr.de
X-Gm-Message-State: AOJu0YzMFvWT4T3b4LINiISILUBKS+qGUr63LIm6GsA+0K+tIujLCWFh
	3YSWRQmrZ6zSwmJiA1BtmMjEcnDHcU96RZ3EYz+gpOMzaFk1cB5BN9E35hNAQgU=
X-Google-Smtp-Source: AGHT+IGsv14mPwmnaWgXEiuoBccWs3cmI2vWm1ao/NO/DYpTbMD78HySu9cVN33DO0zXWkV8pQ2/nw==
X-Received: by 2002:a05:622a:83:b0:466:a3bf:41a9 with SMTP id d75a77b69052e-4670c73a7b8mr48442001cf.45.1733272044414;
        Tue, 03 Dec 2024 16:27:24 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:580e:0:b0:466:b34c:8811 with SMTP id d75a77b69052e-466c1d1d97cls92104791cf.0.-pod-prod-04-us;
 Tue, 03 Dec 2024 16:27:23 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW7mfcrCLCq3b0cYs8mLMthvbAmi0HWHEiog8dY8aFtegHRd/HTYdwVktPIaA1da5bLnBnaVvxxrL+K3g==@gapps.redhat.com
X-Received: by 2002:ac8:580e:0:b0:466:886f:377a with SMTP id d75a77b69052e-4670c0eaeaemr56053441cf.3.1733272043447;
        Tue, 03 Dec 2024 16:27:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733272043; cv=none;
        d=google.com; s=arc-20240605;
        b=bYB5eW87zkGpa7jp0uwLnNvd5IL3BLUqS9dC+8psm0XeC7J4LM+vHOEmQNbOqvu6DW
         E0tS3nmz8rFUk2xiB7AgwTrP3WRgm+4UBuh7Fwb+Z5RMQbwTTnoSkRroAlyKjstFTe5B
         qGNRV7fJKvoO9c6/MQFvGHTxMPJav++bPUhjaFUHV9nU8w+/ulMwDBH6C0ocstoYmTaH
         fN2ZW3L8ySA66cf1K3/F4t/0ohIUoZWas85Lw4iob5NBw9CWafKLWvTJL3Dal8iTfJdd
         3ElqMlOf5Frlprc5aOz+x+Sr0UVXuOAuKtRnEarPOnuZatgBXFGIp6X8F4bU8HCevScs
         krJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=Tc/awGpXtmz6DyWWz2zn7720NrVrWqPrscHUogEIHIc=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=Yg8JpnunbZUWCmg0P6880OPoHdKAjA/AqdngBtgWl1Er3VAiokoxejLAELFmOTj8ob
         F4lFRpvZwwP7NYOcGahtI99nAzOpI+25QWIrNQ9KfN8nj/xMF8oQMWpuX4v0y0pH+8lx
         5Xg+AmilCCRiByNA0F0lAy5IvyaWWU4g/cpbuvoIE8vyx2K2FV2PTWm6b1ZQmn6MjwQk
         fodyqUYXY3bdAa3i/uNdGVhI7K6WWSYkzcenuIeZjKPblbBT6l/xGQL7TXA8Be4PPU0o
         h1DnGrruYBkH5mI0DoFd0p8hszVphISVhz3A6NcQlt7hSjdfLSbXN4oDzTBQoVi5VJ/k
         tiAQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.155 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-466c4223fddsi153147021cf.373.2024.12.03.16.27.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 16:27:23 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.155 as permitted sender) client-ip=202.12.124.155;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-588-Fi0OO1XRNqG7SvSWr4HDxA-1; Tue,
 03 Dec 2024 19:27:22 -0500
X-MC-Unique: Fi0OO1XRNqG7SvSWr4HDxA-1
X-Mimecast-MFC-AGG-ID: Fi0OO1XRNqG7SvSWr4HDxA
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2527D1944D16
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 00:27:21 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 208061956052; Wed,  4 Dec 2024 00:27:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1E2681955F3A
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 00:27:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 93E2C1956058
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 00:27:20 +0000 (UTC)
Received: from fhigh-b4-smtp.messagingengine.com
 (fhigh-b4-smtp.messagingengine.com [202.12.124.155]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-34-HL0BJSFzNVONGmNGtEMvIA-1; Tue, 03 Dec 2024 19:27:18 -0500
X-MC-Unique: HL0BJSFzNVONGmNGtEMvIA-1
X-Mimecast-MFC-AGG-ID: HL0BJSFzNVONGmNGtEMvIA
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 7B03225400F6
	for <blinux-list@redhat.com>; Tue,  3 Dec 2024 19:27:17 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Tue, 03 Dec 2024 19:27:17 -0500
X-ME-Sender: <xms:5aFPZ16G7RVAD0VHxdRbPoVqNhgPQR6r_vCafiajLPAVKmQWe36QuA>
    <xme:5aFPZy7GeGchMKUH5i8htJRGrz1tPuk_3O5IjPa2llUUS5YOokni07JdsdBzEtvi5
    OsGvKKKV0bKVebeYX8>
X-ME-Received: <xmr:5aFPZ8cNQh7tX-fH97Tmyc-EBjGb54AftoKksIuvGPOAfvu_02dTqTIx-KnH-ekUdkvMhALpd6sXsGDAzzaqnWyQNoR5urpczbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrieeggddulecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
    hsucdlqddutddtmdenucfjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhm
    peevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrd
    gtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfek
    vdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
    pdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegslh
    hinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:5aFPZ-IT2MToKe43X86PjkbvUYc_7VQ2wsXzuHhPjVjqtXg6XZVA1A>
    <xmx:5aFPZ5JHeX52QTq3VxIT-Ndu3KVAvDjnFSAgBCts3lDrvOmEMVkOiQ>
    <xmx:5aFPZ3xBb-e8brV_FdmVt_GQCGYKgQKIXVH-e13U-KTBBKC4smSQ7A>
    <xmx:5aFPZ1LbIdjInekuz7nH1Pcblx3tzgi8WcD9aK6UyH8x_3wKhuocXw>
    <xmx:5aFPZ3j5NO2WNLTJ2Z5e30BDyb0Tr7Ehh-0qPBV9edEyxrTe3BPafBFv>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Tue, 3 Dec 2024 19:27:16 -0500 (EST)
Date: Tue, 3 Dec 2024 16:27:15 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Might 1 of You Please Remember?
Message-ID: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: eUG6piZsYCsR_Y4VNDf-lkWsrdZcoLu8HXpT6W1CpwQ_1733272037
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rr0yjMvSi_3oAMb3psHyX5HeHOzN13wqqBwXT6gOiww_1733272041
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.155 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi All: Maybe 1year ago, not sure, some1 here suggested 2 trash programs to 
prohibit accidental deletions. I looked through maybe all of my 24consoles for 
the 2 apt-get commands which were suggested, but looking for trash didn't 
showup more than when I used trash-empty. Anyway I have trash-cli but I guess 
you run it with "trash"  However, another application which I cannot find 
handles wild-cards better. Meanwhile I aliased del to trash-put
I tried looking in duckduckgo for answers from this list, but could not find an 
archive. When I originally installed these, I was useing 1 program as trash-put 
and another for restoring with wild-cards. Thanks so much in advance. Would be 
nice if all my apt-gets were in 1 place
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

