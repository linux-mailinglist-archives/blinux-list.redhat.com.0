Return-Path: <blinux-list+bncBC3NDNGRUAMRBFP2ZDBAMGQE3SKLVAY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B78BADE23E
	for <lists+blinux-list@lfdr.de>; Wed, 18 Jun 2025 06:14:15 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-478f78ff9besf198544701cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 21:14:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750220054; cv=pass;
        d=google.com; s=arc-20240605;
        b=jTqzGeqBnXRIt4kzu3Clog1m0HRN0tpwgX4oWoC6Uy8fa+ZYCYa+SvXNR5OLWT0/sy
         oW8pf+y1tW/BlbyAWDJW/P+1kvH11l1kjFJnKIUGb5QoO4TmsIiuNHZYnFlG1Ar4zdP8
         EuHHr4r5KFoC5Wiw5l3IJVXlgtRYSiAxlZvLHY3gtkjw9dpMpn1Ih+WdMGBMD2mMkKAi
         Y3ktmHMB4cwGG4utCUBQ2cmJ0oExSJMDeGWJvHa99hqFDrsUE9qaCvIvrW9M5IytKYEw
         I3UFdDYIX/6wRJ4VdBkdWVFuO9Q3Mz0OjgbAFA8wRe6o50xoeoh01NuvRapDJPSRJaJ2
         0LeA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=+oQoKxlrqFguAlm4ox0wkNaOxBi5OEoyszl6TAbeJ3w=;
        fh=b1rFiEP3CgdUGeRwchMNAqtz7XrrS0WnAe7ilqewFXE=;
        b=U8eqdI1ckdOJOQSMbkc2QQfwHKWXlu+ORjWhN/mmOgLFmalAxxJcqdnsjkXuQkuWFe
         lTATRsK+VoBKjOhmAtvJHGWCNVPLilWx0JjZGqHyeLL0tpHaDFPeQur0Vn6MCKuAu1Vb
         9x3MchyfOb7yL20PWz5xSFUlhH/VWOFsy6XEwskmctPoGIMHDD43qV8x/hGm1BLmri4d
         uCCqQjRIlcF1ZV1NSgq9cj4X32xiRl4pQgZ8YmsGRNPNzj1cMJNik2fBCxNGqx0Tc/Ee
         isafS9bwMt5te0gre4mOV2jvPVVefi7GCh++npyp4iRVqytbDsgT2n2+uVua68um5GAl
         pBPA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=I00JiiXE;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Crghp7d7;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750220054; x=1750824854;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+oQoKxlrqFguAlm4ox0wkNaOxBi5OEoyszl6TAbeJ3w=;
        b=Oii8AU2RjVS5oVSSYfXxVJf+UK+zCadDO7cETmdoHZFy/o6EBLR27GwwUmoR0nQRlr
         sEnn0tzMl5wS9Wo6Jx4gMMbI4T0V6F3WG9dA1HzEkrqSwF3R7c6F1x1rEjhYwF2Q5EOl
         qjAqBK8tRAEv/N/ssoC4noY1ml8sx1EalhcaNcQ42EgvpjzzH4IfpVRqZVkNYakTDSb+
         Yt2QuoOSLF1yJLB4vYLKuMH1raQ0/12Zf3TAz9EaxK7SX1JQvQ56oFFCFOoPkGClXWmX
         lid58m7dydjXgeuhlUihHVVySLPNV6lt0VRkpnER4G292ZcfVHAioVCSFsIwh7xK0z6h
         BvdA==
X-Forwarded-Encrypted: i=3; AJvYcCU/ayoV9HmTBIvbL0pLl0X5tLMZ5P7H966lhLkNqN3UBwB64z6dfKx00WmgdwJjcG/P41wWXg==@lfdr.de
X-Gm-Message-State: AOJu0YzStCHC9+1SjbQGg8IUX7OalkPmiGtn8BliN5sP2Ssrldlku8Ti
	j148beAQp1T+GdVjJ9qrqmWf17h7WLqZ9YXl/2zIxNyIHoqvGgIiSBX+oxaquogkjvc=
X-Google-Smtp-Source: AGHT+IF0cxAm3GzeFyBmzXwz/gQFqQ1XpjK9ZWTPJABWr9BIvnifK0LanyWjazg+BuWITUIJaTLvrw==
X-Received: by 2002:a05:622a:511:b0:499:23e5:a39e with SMTP id d75a77b69052e-4a73c4e3f88mr266155271cf.18.1750220053968;
        Tue, 17 Jun 2025 21:14:13 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZec6WUArfV817jH85mVN79Y2LDmIuBhKHBo6hFjnmwgTw==
Received: by 2002:a05:622a:3d0:b0:4a5:ae2e:4d0d with SMTP id
 d75a77b69052e-4a722b41139ls111486231cf.0.-pod-prod-04-us; Tue, 17 Jun 2025
 21:14:13 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCU6cwXBdrBQETA7AseUOJo38Prx9nrryv5fNcM4QjWktWFr5D2pNsBpNnZb/BcWdjOweYkRXA/4QnLiWg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1a87:b0:4a6:fac6:fa1f with SMTP id d75a77b69052e-4a73c5cb9cfmr232830751cf.45.1750220052861;
        Tue, 17 Jun 2025 21:14:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750220052; cv=pass;
        d=google.com; s=arc-20240605;
        b=eEKUYX2ecv6b5NZfDukjPWt5up7ydQDuSTX+8fItMjh4AaxYMHpXF0LQ3DqXFMh/I9
         SSwmAS+Frva8uAiOfG1P3fykwaLfnIUpEyG3ddGJZOOKTaYjCTKOKA4ZCfgqZPVRSki3
         ymUj+6/b9seSZbv7uGBRdvG/Fw1h0GSMsTkvalA5Z0QwAe2uksn0vcB6df9U3paphyXl
         VERLik/Y+6UtRaIJWPOhCO5H64I63rdHOWaXKTMzHxo7pLY7RyHc8j7TOXeaGTyTzR73
         LK+QOA2ZE8HKTuqqwFpo6eZkWu3+T/xT1vsjG8AZrztwzbDTm/p1/SRwvtLUW9DBKRdk
         kSzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:dkim-signature:dkim-signature:delivered-to;
        bh=AxZ/KFmNWS1OKjK7lYbzSn5CXiCa3Zb8CWyMNlx1T00=;
        fh=tBUg+Sp4ZT+GFfptu3d7lvKfN58tvI/e+OZyTq6I4sI=;
        b=gqUgDz6CCWDK4FOxxxsgjsK25mYS/PoWee8vHkItR2922AxK7QxDQiJHRgaMnMw20s
         Sl8KJMywRgGqXs+kYtQWiwVX7Lb3TNWzPYYVMQg+67cfk2nRCDGjdkVzu0/YDNBdG/DF
         uD2S9TRhX7gzeMWeYx7HwDlg++PzDYUYdDkG5TnYoeMjaUfp2Y+29QDdbJhpRAJE2lu8
         UZ7SEohPN05eM6G3H78IPpawFNpTBhmmu8+ISHCDtG0CUWyxR1J9B6gYpKfGoxVEugrs
         nUcVYr5O7RWG0C/jeWAWBfYSdiW0tvoksLzJyrior0bUGflmkLqR1RiQiVyvZXuk7l0W
         hc5w==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=I00JiiXE;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Crghp7d7;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a72a2b9604si138379101cf.17.2025.06.17.21.14.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 21:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) client-ip=103.168.172.157;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-314-W8umrTq1Ni6phVgIPN3NlA-1; Wed,
 18 Jun 2025 00:14:09 -0400
X-MC-Unique: W8umrTq1Ni6phVgIPN3NlA-1
X-Mimecast-MFC-AGG-ID: W8umrTq1Ni6phVgIPN3NlA_1750220048
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8275618002ED
	for <blinux-list@gapps.redhat.com>; Wed, 18 Jun 2025 04:14:08 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7E4DC30002C3; Wed, 18 Jun 2025 04:14:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7C14C30001B1
	for <blinux-list@redhat.com>; Wed, 18 Jun 2025 04:14:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E5F571956086
	for <blinux-list@redhat.com>; Wed, 18 Jun 2025 04:14:07 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750220047;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=AxZ/KFmNWS1OKjK7lYbzSn5CXiCa3Zb8CWyMNlx1T00=;
	b=eAenqK5AktRMx0HqnMVCD03umPVnDXJJpNc4MIKjjkDJRdu32zQ/Xog7v+V7qaQwp30FP6
	90aF+fjNUGPAZATRXLNlrYEix2NEOLQsVoGl8nM1z33pMNFLiC89y/bpZ8BsxwnzLW6nvI
	GHYDt6vgLVm37TJfswX6Y8IGgzpdrgKUMEwmIk+lfwM/NT5NJvdkgSkkXDH/XkGGR0LitG
	wRo3Kc7O5u6zN19utaHXijLP4azoEW6UOvd1+/oUjJjzxImwCFZ+mgIhPc4/LXO29GE6o0
	gdRnZr25lZHPyUZYvikUxI1psxB+yaioE2HFkvBPc99ABZLeQtQpbpiUY4HiBQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750220047; a=rsa-sha256;
	cv=none;
	b=jIviONtFt90wRs5/bvfGLAM0bL462RGH6dhc4qlldQRODPOxZfrBjsbDzWguc1cnpwkNLK
	MLTZllQZA6Ss/0Pr9AktSKgrjXOrzxiRJTXRlnTDWnySPHaWUAodzd/NKkDuyHk4I9WnGu
	Hge9i4lcZrTRs8d2VUBPsNdxf/PDYKUuxzZQK03ZQ2NLbmCSeda+h43MM+TM8ftXdp1ZkR
	9p5MwlXuvrz+EDSkBGiPK+d7vrXihEnOQYpH4O44JjrPEdZ/+bB+9nZynkZ/FqQPm8IBF9
	EumJ3DiLv7H4D87Izsz1HCNngkrgCy6mlxpIe+LLG1nVhGxQPV0ieKiiMnYvOQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=hubert-humphrey.com header.s=fm2 header.b=I00JiiXE;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=Crghp7d7;
	dmarc=pass (policy=none) header.from=hubert-humphrey.com;
	spf=pass (relay.mimecast.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from fhigh-a6-smtp.messagingengine.com
 (fhigh-a6-smtp.messagingengine.com [103.168.172.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-134-YcbqzdpAOQ2MdoNgigd23w-1; Wed, 18 Jun 2025 00:14:04 -0400
X-MC-Unique: YcbqzdpAOQ2MdoNgigd23w-1
X-Mimecast-MFC-AGG-ID: YcbqzdpAOQ2MdoNgigd23w_1750220044
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 27EE711401FC;
	Wed, 18 Jun 2025 00:14:04 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Wed, 18 Jun 2025 00:14:04 -0400
X-ME-Sender: <xms:Cz1SaIZzDoc3-2BFqQC_hFDJjbUM1I5ual3Z4_XWy-U0cf5YUOstAg>
    <xme:Cz1SaDawb3hMMK5qNdfCUD5Zqg_lV73mNLK0B0UfXNn7XkpvX00BmaKAYMA1KMwLN
    MOfYQEsLRbkr6OK9Og>
X-ME-Received: <xmr:Cz1SaC_jBt35cg17nv-3sjpjlaItdh0Q2stqHyhyxXPKsqyR0Kac9DSNUISeQCs4F1g9BYQs8nhtHmYe26pceG5Y4Ij8BPIdYxE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdduleegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehjohgvlhiisehpohgsohigrdgtohhmpdhrtghpthhtohepsghlihhnuhigqdhlihhs
    thesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:Cz1SaCphQsLa8UnjVIruocmsozrJN04mviGdDiOJV2CzgayoL7MJtA>
    <xmx:Cz1SaDrfipSZFFNBfWFBcBFlENeZhAZaEOIj4JQhav8tJYfw88We3Q>
    <xmx:Cz1SaATEDZpZuqw0LEakzuuqZ0R-W6dYQ-1xDB9ikYW4wPC3RI-jfg>
    <xmx:Cz1SaDqfRZQwUPSzOppQiuHy-EvXwiwhKj-E61qCxu18KPsS17fjtA>
    <xmx:DD1SaO9njLGADYrn4TJOc4hLBp_CDuGNSLIGRNMVuqT0kV0KNuuQt6ZF>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Jun 2025 00:14:03 -0400 (EDT)
Date: Tue, 17 Jun 2025 21:14:01 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Joel Roth <joelz@pobox.com>
cc: blinux-list@redhat.com
Subject: Re: No Sound After Python3.13 Update?
In-Reply-To: <20250618033118.ijdh47apubmwrvoj@sprite>
Message-ID: <cf09b517-9250-e05a-18ac-97d039762398@hubert-humphrey.com>
References: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com> <20250617155459.g2y65sxmpohqhb6g@sprite> <c21bd4bb-89ae-4a55-648e-6cecdcbb19ce@hubert-humphrey.com> <20250618033118.ijdh47apubmwrvoj@sprite>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -3
X-Mimecast-MFC-PROC-ID: 82nEMeRcKmtpgs0_fpKNmHEi9jiNmTY9ijGMKv61Nr4_1750220044
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hubert-humphrey.com header.s=fm2 header.b=I00JiiXE;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=Crghp7d7;       arc=pass
 (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com
 dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates
 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well, Joel, believe it or not, my issue was a patch-cord which wasn't engaged 
all the way.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

