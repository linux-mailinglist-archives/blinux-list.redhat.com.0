Return-Path: <blinux-list+bncBCFJ3VNT5EIBBG6BUHBAMGQELVZDZBA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 31357AD3F57
	for <lists+blinux-list@lfdr.de>; Tue, 10 Jun 2025 18:43:10 +0200 (CEST)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5cd0f8961sf1031494785a.1
        for <lists+blinux-list@lfdr.de>; Tue, 10 Jun 2025 09:43:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1749573789; cv=pass;
        d=google.com; s=arc-20240605;
        b=VofiyMyXpCk1wdK1BpAfICAWpugkYSAnDqStppRc+oDrC+wApBcOBLyKUNNHwfKLn4
         hcXHbYGaV9tGBadXb3B0Ai0Pw+exakZCQfShC7wa6+FDf/9wB8i1LTgtTjrtorfW0b5c
         0pwR+o6rhjm2oVpN3/PVgzrokCqjzQ0svfYrh5OE8DHxB4/9IQhPkzsW0hZZQyyBDHIr
         V5oWuVR2hCJI83lF8ugslTO4sg/TQAyHm85Ez+ckAnYPsSh5Psnd94g/ri8b5rEv0Wkn
         BTJdMW/Klf9t5oaKE+7lMDA6322c8ROTjuqsqbzNlCVFWmFE6asmYO9HT+Yij1Gw+lsI
         KgQg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=WpY9W6pl7+0EXMcD7NlV26Ys0folqyMm2Es5P4E1gL0=;
        fh=hLjj3sVfqrYy13CBx0EAh9RRfESxp9r3vGwdhAh/7zc=;
        b=Jd75KVIS2+4k+O0bLxf6Lb5yyh9hkxFzgk7AA+deVL1Le0mvt0hnTMLxSIFB7mdFSC
         MiezR8rsGSDiWuWKtrEbbtVFVSTsP95ZuR7f9wWZslE0GGcR06bBCH5IXzHex68UEes5
         JyZyQEj7+eXp5Biw74mo4DLZeg3fTAOrCNw7PG4b9NSoYG6l+VgS/HChrdlCl/cpwkUn
         cau6SDQDt9jHwNQQUu20y9n4VRXipxD1zKmMrXzuARjD6fBTyFVjJhrdRQD8zzVp2xAv
         EcT0gCrVTApN3UJ+ec0OCMHyILh3WQFDSUClvLO1wSyul3LW8roGr6Rkw2AsSY7GTQfV
         N5vg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=VMHtiyiW;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.54 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749573789; x=1750178589;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WpY9W6pl7+0EXMcD7NlV26Ys0folqyMm2Es5P4E1gL0=;
        b=OtrwC6kN4ofeQpT48o7wEWHxmuFl6cvs85UFlNrOy6p689hfFwQXaR2NTZdHzGTUok
         wxaFGJC+KNQM2VsUwqz/tYuY5f65IZeKoXGwZy4LduqDczZsKRWl4c0EmJMtXNzjxZRa
         EUecw79ZJPS7HXLaU4sogupBVacd7di9iK+nxpA7rLS+BA7mKeUwAKPOY8gkrv2rmPZ3
         ZiRPjTRj7m337VjFWtM/ScYCGYv2LypHY4UNkHBELoOtWFB3pwO4mXyAVfZvDcnIyQUV
         BtPRp7hZHfDoyn0Ghxn/37/q3no3mSVAIIjkUtRpnip55TBxBIi2VqyRjAmPraOk2PC+
         vBmg==
X-Forwarded-Encrypted: i=3; AJvYcCWB+RanNkD0esSeNGtNefDFm3WBqC8ke1FZGKV905lYZRUty24cSoyKNm2Logv29IjvFBKp1w==@lfdr.de
X-Gm-Message-State: AOJu0YwGplqrJhG32hi5z39ZwLQytRNzlN2AzvwnEKBW77o1IzaJ5CJr
	S9Cn44AZIZ/FNtjtG9P/4DnR3IRv2YdqyfOPs0h2nyGRFpDzsbv3Re4AptX2DJPU3nA=
X-Google-Smtp-Source: AGHT+IGygZe26fjeUowOhLD83xPa21qL5vRUJUKw50zCkUbhLZRcD3feoUXJ0sVOtnRaQGZ2DMY/Qw==
X-Received: by 2002:a05:620a:4113:b0:7c5:dcaa:d799 with SMTP id af79cd13be357-7d3a88c31efmr6674785a.39.1749573788101;
        Tue, 10 Jun 2025 09:43:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZdWnPXEEt1/M2rMn8Y4B75bLgtyk+wT9sv4gBVJl8juVg==
Received: by 2002:ac8:5749:0:b0:49d:9658:125 with SMTP id d75a77b69052e-4a5aef15554ls90241781cf.1.-pod-prod-09-us;
 Tue, 10 Jun 2025 09:43:07 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXnTO/d2Ulj1mK6KFrr7ojwprkGoaPzlCnWVO6ZNpZBXR20mFrWNju1s6m5aqjUAeY0zOnwFabUgTPl1w==@gapps.redhat.com
X-Received: by 2002:a05:622a:98b:b0:476:6cd3:d898 with SMTP id d75a77b69052e-4a713bb1ed3mr2230381cf.18.1749573787027;
        Tue, 10 Jun 2025 09:43:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1749573787; cv=pass;
        d=google.com; s=arc-20240605;
        b=hmfCfPLqkdrkkppjMSxLAwYBolgteCDkncQAZ90e9xi0HCpNTbDHgGeaDUpOzknenw
         qJTwSvNK2MNUj7i9vISpQ3Vd2jUQDwkD3nUvdxk2gCatnZwh0D1p2fvC6mtGaonKlEEw
         PTgLI9umSSp71T7LbKrVXPdtSc8e1CKqnz2ZboOA9aIJ6lznAUObtVaGL+hCQO6cETbc
         inWrMd3SS0rd73Wz/IUc0hd+QzwPuKvY9TkpYFp/lzT5bjNY+MvEm/VO9wJ2vXHiKwz4
         InG9E68iQpmnkXAilAzGrT9zjduTHjhX4f7RYTb1eROScTU0hHBfZCuoREabct0JZbD9
         a2WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:dkim-signature:delivered-to;
        bh=7oHjmfe4W6GYiWdb4fb099ZPt8fHfwM99nMbMPvkaaw=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=GVxBe3wpJyCZfyOpJy3DqX+MaYaveTYYHtd8xq64+Ml4cmsLsm0AwLVXqVJ8etiu4g
         dVyqRan4NTyWrzI/6HtOw9hrkN1BEy3hVMr1QsJD6RtSczvcKOgHyu/bK1pDrmLdduKk
         FmAVJA7rZynq1/wF8yFM0EhYsgupzZVCLW++5/eIPDhELx6IG0YPqmeCh9rm+66UFUcA
         g/gi6fVXRTp7WFS6eOYbt2e9QGy1ZmDk8tDhsqTANNmBJhzzUFOXCpe1BFX0zG2+2x6n
         kMlhlO/J7NJv3T0Va1Wt0S/3StDcWGVcmtopbbvAtPPLZXAuIc/NUvRshkVKOZGlgV9L
         bPFA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=VMHtiyiW;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.54 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a6198903bcsi103965521cf.329.2025.06.10.09.43.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 09:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.54 as permitted sender) client-ip=209.85.160.54;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-558-eF58vnZGPK-oOxNr7Io8kQ-1; Tue,
 10 Jun 2025 12:43:05 -0400
X-MC-Unique: eF58vnZGPK-oOxNr7Io8kQ-1
X-Mimecast-MFC-AGG-ID: eF58vnZGPK-oOxNr7Io8kQ_1749573784
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5D64619560BD
	for <blinux-list@gapps.redhat.com>; Tue, 10 Jun 2025 16:43:04 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 58D1B180045B; Tue, 10 Jun 2025 16:43:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 55D3718003FC
	for <blinux-list@redhat.com>; Tue, 10 Jun 2025 16:43:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6956B195608F
	for <blinux-list@redhat.com>; Tue, 10 Jun 2025 16:43:02 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1749573781;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=7oHjmfe4W6GYiWdb4fb099ZPt8fHfwM99nMbMPvkaaw=;
	b=CtGEG1SOX6pAQ+4UI+UAmtsjUzGr0LTLF5PWTUGP96uNdQIv0KuUXkwOhFzfQjmlfbE8d8
	x/7Fh0fFLOrQPJFXMXobpwUHyTCkLSgzLbAbxlB5dKzZOJrzq3/BdWSaY27VOQcx/KNv3K
	E7Bj2lgtAsdfnzaD81oN0Z52U1H98lfUWiUHNNKsvXtoYriwzGEGtE/C+YOHJBSt2WBVoA
	VwsAvOhDJvhSQAY0IHIHXBB65FYYzfUeyFdmneBnUTzSzaJ70r+S3nhedEYtxUaOKYVQub
	wHPrRqTxQ7fVZCbeTyXyRJ/u+1YXX9M6+kfuv+LJu5cpkXKowKcHaayiffaJuw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1749573781; a=rsa-sha256;
	cv=none;
	b=F4bwUVsFWaDUgei8DaNea52p5tehcgh2X6rjJgP3Q834Wrv88nm1YaahacNUu2zutSFAR+
	1UXv3YlHPDJNIUXKvRfRtWAZts9niqqjynThAzr63mHXZzvDgRcJHA6RpEdUVe5/CUlah/
	WayGCfByaleTHe05Dweklz55aZbz52bdhyWigMY9N0XiYenRmMwmzrlXU6CwGpg7s836P8
	PD2mQX0K33XJillvX3/GIKCvbCNwRcdFGCWIXPm3Cfzg6avVp9IFOMX/WBvCd1F8uuROqd
	0D2JvUs5NHASuG81qJiFs2W3OmqTUuHaE+LSHTInEPPwdslEC9zv3tv1IFUFIA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=VMHtiyiW;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of dcrone215@gmail.com designates 209.85.160.54 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com
 [209.85.160.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-438-xsSE_EvHMbC4MUlo-bvjyw-1; Tue, 10 Jun 2025 12:42:59 -0400
X-MC-Unique: xsSE_EvHMbC4MUlo-bvjyw-1
X-Mimecast-MFC-AGG-ID: xsSE_EvHMbC4MUlo-bvjyw_1749573778
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2d0d25cebfeso4539222fac.2
        for <blinux-list@redhat.com>; Tue, 10 Jun 2025 09:42:58 -0700 (PDT)
X-Gm-Gg: ASbGnctPfJrsyqQz5TcNdhr7eZ4fgLktXDyIX/Nm0OBiKOF9JIC/9olo5AVmNUP9Rr4
	FrfSUlfDkE0OIoxvWujhqwId35moSkquTC9vczUDeWocGG57F/qu7aBhtSPipjzEfGAPPtbqN2o
	emF4xlwZS7NwNkrsbNvrE6ufU5+63iz6DQLnHENq7XTQOwUIbq4cRh3L6gvuJmM2DwQv+19Wky8
	lAtYovf/O3o9Ku6PRDj43BveMXtxxuojnlwV2O/PGSHu25H9EZXVq+tbW2BSNr9kxUBKnv1yx1N
	Qac9iHD4YA1Z1gKg4fGQGSZfuLQCoYOxdlD7oQ7swtSpbINLH4QmxMkbf93We6H2aabDtbobDIL
	FEB8AfuFdtVnOsEhHD58=
X-Received: by 2002:a05:6870:860c:b0:2e9:3c7:1a1a with SMTP id 586e51a60fabf-2ea9664ecefmr49233fac.0.1749573767044;
        Tue, 10 Jun 2025 09:42:47 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d10f:d3d6:982d:c0d6:48d2:67aa])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ea06fed848sm2450979fac.4.2025.06.10.09.42.46
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Jun 2025 09:42:46 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: everything typed from terminal
Message-Id: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
Date: Tue, 10 Jun 2025 11:42:41 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: f0lq8Gl7SwN4JDg9AVfept5PAHVqZbxs1PIF4r-s0vw_1749573778
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmail.com header.s=20230601 header.b=VMHtiyiW;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com
 dmarc=pass fromdomain=gmail.com);       spf=pass (google.com: domain of
 dcrone215@gmail.com designates 209.85.160.54 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I want to study all I have typed in terminal over the past few days.
Is there a way I could grab everything I had typed in the terminal, and then put all that in to a text file to read over it?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

