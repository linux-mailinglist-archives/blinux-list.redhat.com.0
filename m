Return-Path: <blinux-list+bncBC3NDNGRUAMRB25UV6VAMGQEY45T4YA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 7626B7E5D8B
	for <lists+blinux-list@lfdr.de>; Wed,  8 Nov 2023 19:58:53 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-66fbd3bc8ebsf824546d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 08 Nov 2023 10:58:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699469932; cv=pass;
        d=google.com; s=arc-20160816;
        b=ETrMqw3UShJDnfoSOgIiYFxFmljLvJYOpexIw6pA+dupqHiUyeBSGYBDEQEeyf7EdA
         ksFd/nJNexY/946dfxc85XOPE3LQsBkOCadeaviT4reNSTKegoPE5ZHQW/444Fj+zzsI
         QhNHn3ca/ASOUFe1lK7bSGcV/eAkK9CBWUJ2BBuL7hpUYnnwqVsYq+SFz33FhIXwsMOH
         Pdsww/JhIycgjoUkE5s5dIiPdmMhFpxCrWazAfHEEir54TJ/IzCrUxiS14vM+Dy22PoU
         nOKTDBwEa6yQZ9ePrXBljYpCWihfOMPT3xF4f5pPJM7ZMGV3dTm4TRaydCmr+TdlN0qw
         NSBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=YIKMw8/+qJl0DRUr9yFcdEOdfNvbi7SOqTWlOnsrVoc=;
        fh=J+Y5kC7kZyhseIM00lLeblDFGbTNlEjAqaLJjhjp7/I=;
        b=CgYe2eGeRxW1ENnruVY0W5sHGiJPoy0MtaL8hXzIDLdKap6bAhQcjDprTvuVOPDGZH
         /QR8/jWc0EU/xHNOPEcee7EEVTE5zXpdVFMFRTq5ot3at+Pq1XibHml5jQMvnE/0BLnB
         c5zuoA3xQ2SVcs2n0ozBSWJGnnErUOSape0MRaWKlAQXl9H2IIkg7b2DIwc+W35jip3d
         NESO2WLJJHev5dZYi2vqwyQJe89mG5APeDmTjPivtCLxW//Aok/thlf+SMgkVTQU5i7Z
         BUXYf43UK5qY5TKNMcZn9UDAftxMXrLt7LMutWDO/NOUkEyqiojuudK2mEslw9/C5/3A
         Ubpw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.19 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699469932; x=1700074732;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YIKMw8/+qJl0DRUr9yFcdEOdfNvbi7SOqTWlOnsrVoc=;
        b=NyiI1XfGhR5R7MZalIna1RoqsG+Kk4AYGM0oVuXiSdp+ytP4mdpSyikrYD2uJ9nee7
         HST28cALYoSRRRN5Xg1Cc0Bd3iQ5K+Gm8ZkVUyMuvHUj79NtulOSrhHybf0jY8aw6DpB
         L/OJf/BJU+2lvt9sHuhUsm6QpnFTu3ZsCWrYun7fOkk9RNJFtfPBJF1HQiuWoxfJPyeb
         DXCbWiZwksKvp7ibVAPgvpiqvONWYfzUKSEpl5I2cMrZB41U00XH9FZI/WLUFPUgXbf8
         foK+ndbP+fSJNUtkPyqHb0VY3jWdgIQ2BQ65V7dTiJujg/16gT+RM56PmL/aBqJcFVUW
         G41g==
X-Gm-Message-State: AOJu0YyOcvpCmwFXBdRavVG6oRmB+lXyXmNrke/NQn1H8vmNlWY1YRpn
	tc49FNjq6MczFUkbqm5V+QtKaA==
X-Google-Smtp-Source: AGHT+IF77VmK8hhOQYztulY3aJk1cn97VnkqANOMpJkMGXtZexDRdtNLV14ePXMg+SBTiQKN2yVRXA==
X-Received: by 2002:a05:6214:2422:b0:66f:ba6e:73e8 with SMTP id gy2-20020a056214242200b0066fba6e73e8mr3250919qvb.41.1699469932023;
        Wed, 08 Nov 2023 10:58:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:12dc:b0:65b:e4f:d22c with SMTP id
 s28-20020a05621412dc00b0065b0e4fd22cls32940qvv.1.-pod-prod-01-us; Wed, 08 Nov
 2023 10:58:51 -0800 (PST)
X-Received: by 2002:a05:6214:411a:b0:66d:3690:7c2f with SMTP id kc26-20020a056214411a00b0066d36907c2fmr2897765qvb.51.1699469931216;
        Wed, 08 Nov 2023 10:58:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699469931; cv=none;
        d=google.com; s=arc-20160816;
        b=SpBBJf+6VVmfOvG9dAV0oVBy2Tx3R0PF9usp6xC2jNFSoa4S/g3jH7CT4mGyPxEXkb
         0vdiy0gPwl86hfqyEjW9nYrPkseWJu+Z3gOdJjI/kPylQ1fqeuQWOcYUZGL+c8FEJO+a
         7u8RXILXMK5S9tFWbmZI7PjTrNGMxB54AqaAzrbh4NvVdYTnOOtIg3z+p2le35AiTaGi
         6lxIYAN6Zv4Rvk2lM+ksFeH5mv4iR14ZeVRfWuxyysH6q2eqaw15Wt+EOjtRY4ihleCO
         nwxuwBxSot388xw8QMaLvddqidrKIAkt9JWdSedLX6l8BIa+nZ+LKIo162HndWV7sXAX
         HuEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=3GXLunqcRmM6h9+/VgKl+ZgIKhrJn3dddOQLmg59AKk=;
        fh=J+Y5kC7kZyhseIM00lLeblDFGbTNlEjAqaLJjhjp7/I=;
        b=WBLNH3bT19KPYgZj7y32wfiQXUPYl2UT5Ez9fZ97tSFdmuUkylA3NKn5GPZXQ7MkM3
         hLqT7/FXHg57dLEmOGUVOrhVldaicgKo8XdMINNBHTPegHsrLLizhfPR89iLMEq88KbQ
         FnQhB1KdcdSrc2X0Ro/OAgVUmyJ3N4eOGDl7zql/6T2TJbPPWN3AYOElVuxp3Ggbmzs7
         lYgezp+pNqw2UJD+bZL5QQid65OwoLerHPfmIty+QtEeWGzVr9DmdW8RP850lD5dpdbi
         A4NtQ6g2Dd0ELcmyqDM9igBaFNKMS4dl6wPb0jlnG312N1MPokCX8wmIq1XwX4NqH/2R
         O66g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.19 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id ec15-20020ad44e6f000000b0065d7d4e6f49si1702543qvb.333.2023.11.08.10.58.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 10:58:51 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.19 as permitted sender) client-ip=64.147.123.19;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-557-MqF2eurLNam2tbxhVEEJIA-1; Wed,
 08 Nov 2023 13:58:49 -0500
X-MC-Unique: MqF2eurLNam2tbxhVEEJIA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DADE3C40B46
	for <blinux-list@gapps.redhat.com>; Wed,  8 Nov 2023 18:58:49 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8A8181121308; Wed,  8 Nov 2023 18:58:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8281B1121306
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 18:58:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D2AD802E55
	for <blinux-list@redhat.com>; Wed,  8 Nov 2023 18:58:49 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com
 (wout3-smtp.messagingengine.com [64.147.123.19]) by relay.mimecast.com with
 ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-344-qsfU40xBPSC8vjsgtIcs-Q-1; Wed, 08 Nov 2023 13:58:47 -0500
X-MC-Unique: qsfU40xBPSC8vjsgtIcs-Q-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 5E1093200915;
	Wed,  8 Nov 2023 13:58:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 08 Nov 2023 13:58:45 -0500
X-ME-Sender: <xms:ZNpLZZv6O5RYwCZ75qOCXjvkCubnzZBGrO7KBRDGAFtPUKT2ygIsBg>
    <xme:ZNpLZScSi7ktSCCj0_vPP2iivcp38HoMVwsIK1vk_PfFoXbKpSMhkVG_FtS5u69iM
    mm9ADcwvqbp0REY0BQ>
X-ME-Received: <xmr:ZNpLZcwc2nenSJch-t694HiwNSf4qCZhjjH4qFaZm9Vs5LXM1xrdqtmF7jszEl2MzzbikmnfK3BSYDNA-I9FX-SmqNS8SoOkPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudduledguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:ZNpLZQP3sLb5wCUtB7XUezcQ9K5PPgEWDm3r78gsV1l4K5c86caJIA>
    <xmx:ZNpLZZ-iTVQkHvC5xsoRcCuK-YOqdjbipPFZr0scIvP-l6sYys_wxg>
    <xmx:ZNpLZQW0o_Jxpx6LBC5O3DpDCdjDcPbNRf4lEjLcUu0IoxU3BEkODg>
    <xmx:ZNpLZWGHyfAyjm2IGN6FrIXjoTnqKNlErpLac-1UpCB8H5hdiuslTg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 Nov 2023 13:58:44 -0500 (EST)
Date: Wed, 8 Nov 2023 10:58:42 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Daniel Crone <dcrone215@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: playing mp4 files
In-Reply-To: <505BE7DD-17FB-4498-94FB-5A29D4E7FF90@gmail.com>
Message-ID: <8930a309-01b4-201e-bb15-8c674026c385@hubert-humphrey.com>
References: <505BE7DD-17FB-4498-94FB-5A29D4E7FF90@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.19 as permitted
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

Well Daniel, while I haven't been in Fidora since at least 2006, I would think 
mpv would be your best option for playing just about anything. In some cases 
you may need to enable a separate repo to install it.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

