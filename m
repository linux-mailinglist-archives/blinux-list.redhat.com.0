Return-Path: <blinux-list+bncBC3NDNGRUAMRBY6L2W2AMGQE6NZWLGQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE009319FE
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:09:40 +0200 (CEST)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5cbbf1a8502sf3658485eaf.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:09:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721066979; cv=pass;
        d=google.com; s=arc-20160816;
        b=l01NFm33LmTOol4/Bu597hBLkOSyA0BwOKZ4AOGe8hrDGgkb0v8BL+6wJnXLJqYyHh
         65kMHRgTrdqKROW195adJuMIsHAZo1TMPbRSp08/SjjKbsM0g+/f7VkmtDc3R22i1y9c
         MeYJHYyFD5w3fZxtJl0BTdQnvRJeaejauw5a2WY1/mtfr5cfe/CAP/bto1LmTOrs3ZOj
         529mLyyV72J9u48oUSjRKJVzilBXs/8vgDy/Kd2JWgHRXBfBkeRi6ynq0o1Ix+u71cnI
         /IeFugljlIVfA1PZ1AQM5X4sZIVYv7jnvf+s3HZJtUc8J1ZjE1HgFiBR5IUmWwuIS7nt
         Sw9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=nD/vHrrIOb7JAi/8GxNgOPcWyaZjzdeQdNT65VdaKzw=;
        fh=DX6QdTiWbX/4u5Ly2Ukd+IpBOkphr3vp7os+9duExcA=;
        b=kGzOwmrvZbD+IdzNCVEerK9TBnEBp/D3aNX65NkR2QhkvarTKm/wXo8TNRji6LYBpp
         2EW1yEZRl3iQtqvY1pEezve/t0B7wLdBlDCUkO2+pl+bS8TBmQfsJ+ozccclGmtT20/k
         +9DU9L27pKykGRt4tVLDt2HdzHH7BiO6VOqKOIcER8v1XUQO5AnXzMF3LPSCJQ2x5PKb
         7NLDDqyXwwnWY0OFCHuZCvcnuTdCVRsAveDGDGHwRHfb8jh6vyb3BMfAIvT1i2RFbzsn
         OK563tAKOrngkCjCge+bEfMssNQmC2k6RkVZd/vn4LODhsoksZMhkawenFx0tfK7e88c
         1yQg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721066979; x=1721671779;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nD/vHrrIOb7JAi/8GxNgOPcWyaZjzdeQdNT65VdaKzw=;
        b=vTxLv/nCwQMgUJBaDTz9Sy4wes1QwreWsAYDlDngH/eVmnFO2hxUPn8wDMSWfZSGvj
         oU7Hb/iIv8WcBPEKrT44p33D//GzauheCP4oUePS6FHK36FbB0LRcG4kGVj1B8HAF9Ch
         xEtS2vkU4iizFVOhxzHUFhKFlN/dpoIu7wb+tkJ2X+ek1gGrkoJhg8S/3xoSG6xfzkyC
         UYZM61ciQFjw5VSXHeNmcFOTqKFY69WWIwF7NVvkcTxEYr5IzCLCB8hayODsDp3AIUiK
         /cspSXMEDyDAxxid+0MDmDtAUIVS5rjplpe7l1N41VlO732yL+FddhC8xPaS9fOQpMpB
         EQzw==
X-Forwarded-Encrypted: i=2; AJvYcCVIhc20SNN5hUZDXmTFLjpey7DTJ0n/TAy2lYQkdoTRh7C0a103IXqruiLMeZNHhdyA88g/4q+POaClqke/eAGmSI4UVYKBQ9Sd
X-Gm-Message-State: AOJu0Yzjud+GOcu9Zwx6KKsLkXhYOYt9GBJm/WBB7kZUzaf2czLa8AUZ
	O2ynj8G+sV+L8Ke65hc5MCBMz67Osqw4Pav06zGytphVBCqDi0XJFM5BV2WiRGM=
X-Google-Smtp-Source: AGHT+IGE0LT0HRHjD/qzayu+osXo5nevTSPqI/Zie91Uw6PfRqb21fLZ3OlUu5joTBEzUPhZtgO38w==
X-Received: by 2002:a05:6820:20c:b0:5c4:57b6:ffbf with SMTP id 006d021491bc7-5d25035b47fmr495471eaf.0.1721066979604;
        Mon, 15 Jul 2024 11:09:39 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1045:b0:5c4:4ad9:156c with SMTP id
 006d021491bc7-5caad708237ls3482135eaf.0.-pod-prod-05-us; Mon, 15 Jul 2024
 11:09:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXzH0m7GOhRqkM8DbdZ5kbU85xNJzj9q3FvP3HrTtCeUm9W+MVUO/aFXHuSM/Ikybe4w5jbEqwtvdhikf71qEW4qZ8+boN0GUVkQg3m
X-Received: by 2002:a05:6830:6e90:b0:703:6b2a:2af9 with SMTP id 46e09a7af769-708d82f3ac2mr717931a34.10.1721066978881;
        Mon, 15 Jul 2024 11:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721066978; cv=none;
        d=google.com; s=arc-20160816;
        b=acPl2gizhUjR0r+j8onTd5LP5pvrowtaRPNEiiH9MRvU8y43BkzyCelB8oMDHbwsQ5
         8RJ3LqfPZ+mBhMLuJkqoure9qN4H9Bj3dWpQYZkzN1K1gTfvlv6QJ5yKph3pQgnPIGhl
         XLAj1/uJx1r0xZbzIPRDNda8Tw6rALBek7LOheSYx61F4VUv+7ihBnXFmhUWAtBZ0WLs
         sZ02YLV6mKfZOAM82zdRZD1Lnf0+3aL94JeThnuP+IzzFJzg8pLse7rVFrKpNsJrZDMw
         x/kIFEc/R1thX0R0MyiHdsLx1U6CbafE4qoD2vjEwxtu3PRUd4ELRtT2OgNKqL5mtKkW
         Ydew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=P/WSXHd+3+vca20iQJ8fFlOxy5U+mTlTK0CpwPMfuZE=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=Xpv5AUHhhTixNEI8a9dScDveoR0eDgthHVyRMLvpge/7EOUOGlm4woivtTjQJo87h9
         +3ztix6sLMCtHBZv4nQXZGyPPloujyZzK6hidS7SgfvUldrBsSnuocAtll4xIn86V6M9
         i2PwAA9hKeuu2mztTBcKw8Kwp8RUUg5utsDsR0+k0mo4OMSSdi/TCkHg7MV54c+1gqaI
         dx9tov5y4EkGI/PI1ljFqjfqP2m3qfKuPkJf3L9b+PJiP22UvvwPKZ3e4dAkAFc7vvm8
         pFFFM992o7RdGvjBQZgfIrLW+dgn/Vg+qz7vDgoBfHbV+0BDZ2lTVk2Royk/kE6B9mGq
         6JHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a03601si55749976d6.294.2024.07.15.11.09.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:09:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted sender) client-ip=103.168.172.152;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-360-Lj4ObNLVNViEyANxC-r4SQ-1; Mon,
 15 Jul 2024 14:09:37 -0400
X-MC-Unique: Lj4ObNLVNViEyANxC-r4SQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 739251956088
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:09:36 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 60F6E300018E; Mon, 15 Jul 2024 18:09:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5E42D300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:09:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E0A141955D54
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:09:35 +0000 (UTC)
Received: from fhigh1-smtp.messagingengine.com
 (fhigh1-smtp.messagingengine.com [103.168.172.152]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-272-uThFTG9FPMG018Z_6XxOfw-1; Mon, 15 Jul 2024 14:09:33 -0400
X-MC-Unique: uThFTG9FPMG018Z_6XxOfw-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 7DC0A1147CD6;
	Mon, 15 Jul 2024 14:09:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 15 Jul 2024 14:09:33 -0400
X-ME-Sender: <xms:3GWVZl_vJNadPax9WipvmKVwIG_SYG3RwCOZkYQ3Xj4-l_bg4QM-Pg>
    <xme:3GWVZpthU7Juc4IMUMH3PEiW_aQ2O7jxBleAdhkON5wUbvmSh8gD6Paa3BDJ6Ougn
    SW2hF-dDm6bsKIEyMI>
X-ME-Received: <xmr:3GWVZjApdjOCeGpBjKl-cRHZdaFz_M8zP_YiK-4h_P12kxKa3hpriRuw9pTT1JKjdBwDbeIdXybmthR5TqI3NyDTP1CLBGnNlys>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrgedvgdduvddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:3GWVZpcVdO99xF4llwl3ei0FAqFf6nRwjqagngUTMyEhohqRpmcMSA>
    <xmx:3GWVZqOfSlX3q1wZE8Zf41U3zv3RubvO-OB4JuJk1AowoKxO3f4B2Q>
    <xmx:3GWVZrkGXWFN8QF8Nb1I2yh9F-d4QIbVWaucS2aLAERCVJCCB9d-xQ>
    <xmx:3GWVZkukzxvG8H1ZChpVDA2yaigi-e87f23To2kFTIU_0YiQLIJPiQ>
    <xmx:3WWVZjbeHmRrcOAaRFc95zcwx_HmsmhQY4CmJKcJ0kl-wF7PMH4Vo7Iu>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Jul 2024 14:09:31 -0400 (EDT)
Date: Mon, 15 Jul 2024 11:09:30 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
Message-ID: <c9f7d2a9-5da2-1cde-7cfc-a1ccd83d2128@hubert-humphrey.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net> <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com> <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.152 as permitted
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

Well, Karen, last I knew in bash, you can hit escape 4 consecutive times-and-it 
will ask if you would like to see a number of packages? It actually tells how 
many. In my TCSH the 2nd press of escape beeps-and-begins mentioning files in 
my home directory.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

