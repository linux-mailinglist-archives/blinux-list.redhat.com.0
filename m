Return-Path: <blinux-list+bncBC3NDNGRUAMRBTPKUC5QMGQEISNM2GY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 1842A9FA681
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 16:50:40 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b7477f005esf703748985a.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 07:50:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734882639; cv=pass;
        d=google.com; s=arc-20240605;
        b=Q4ru1Jvc1Z6DIEfqul7VdEdDR5ObLXxAFcL0CVO93pONsTXgrUIL7u29nb0KF4Kd4i
         HPiUJh3ZItGYbnUuME4Aev2XXfIPye0Sc/N9zTcc/XdchWnXUUpBoVY9anFOzxvU24yP
         KNvNl0eQz8VIhZhEZbfcWD6Qc0cmDWp4BZOcm2+ELrckdwz2KixouMZwNcq0afTRt4Pv
         MVMVuIy99xUDreq+3A6iXy992sM8Xqc2sYmkyzTPi41UOLfVWD4e0JbDXKQRTyqciqGN
         sPX0+u+9pw1lRuaazmU5am1h5Rpw/MDMTNnt4h7BjfD8MH9JrRJ16DNOT3EGGHeLOTTs
         qELQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=PKPd7j7zp2A89TE/th2SDGkL3Y8uBr80KWeLagzxOcA=;
        fh=iZl8rEbinQ9AzlIODosWYn4zZ6ayvkeHG57A9FYxxCw=;
        b=Dte5/uiAzp2E6z/vDsSi8382xGHbwyDOb9GGS1wlBTqKVPyr5XlNEc3nm3ViUMJpOK
         G5c3AThOTVY6RLX/ziko3ZJUfXsH2CjHHoI64j5acEmBnia7z8h7NUG5x6cLOjG6P5Zc
         W3j7Zmmjxj/XkJPFzFlCnpB/gd68N7KopwSF3ozAIwJEjRK0RIt/UugTNzUt3vQfWKT+
         0LCyYIBmcexaAEZzsPi6kA5WNdqgbDJRxbtA1vcbw1sb1E7mrMbsOwLDnaqgcn4OpRmV
         Xz/6wtMTYWyDmwjtLJypTXWykcmytk59g4SIEbimunfrLRLn4UuxpeKfkQj+pnLpTXlJ
         kXAA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734882639; x=1735487439;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PKPd7j7zp2A89TE/th2SDGkL3Y8uBr80KWeLagzxOcA=;
        b=Ryy0gwLhiqYrLY7Itg2V28ae4Vkue0uHCdw+VNopYNnVoCxqTz7MUM9FjoP3H0ogSz
         rFoS/7SmKRQ2mZf4DstBSHRyhHGb7njZd8b+roMkB7q/YgeWZaID6hv3uMsjhL5CvdTj
         PYSwaYz/HsJPPvifp/XYqfs7x7SQeMLduliseKTaYF2DK6+DJ4T/hpREbZKIFDtyRp//
         5WtCy+wD9QKxdfyrKiDwgiTvsB2PdBN9agv2qZ2AL3wjVSzsJzRaLXZbAROKU6OLgy9Q
         UjkKbzVb+/vgIzJR50DbyV68YTR1AwX7+j6534MGrKgIpCvRUOzOrCxa9CPqBRtWzuSM
         B9ZQ==
X-Forwarded-Encrypted: i=2; AJvYcCVV5S2zbv5IiA1wqNW45rhgTGvmxC7VicNqV1PqRqSMfFEvUU57zSESMEyfyRtBlT66bNnkzw==@lfdr.de
X-Gm-Message-State: AOJu0YzsiVidkG9hMvmfZNoAmSJOE/xMCdcGDbBrSkiIcn66inP6OIBt
	GL5XfyQmGViVEbPooSQrTYgv3LPBbc4Dyl8aEJ1AuaoSbLVnXbnA4T8+52OspH0=
X-Google-Smtp-Source: AGHT+IFFTL63YjDl1iFaafhFhkpmAP3BOKojB8jLrRRu0eOIpL8vOrDC5Bm5SEnPuACR+bA1x0YlLw==
X-Received: by 2002:a05:622a:1892:b0:466:8cc1:6221 with SMTP id d75a77b69052e-46a4a9a2b57mr207357841cf.50.1734882638075;
        Sun, 22 Dec 2024 07:50:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7108:0:b0:467:4d40:31b9 with SMTP id d75a77b69052e-46a3b07b4d0ls29370191cf.0.-pod-prod-06-us;
 Sun, 22 Dec 2024 07:50:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVJ4b+5nLaLaewOpmx7xWTiAhosI3vMspkE9bp8IU0qJHqQroVZnCH6G+mIQLoznZAUPk0OyxP+1uFfUw==@gapps.redhat.com
X-Received: by 2002:a05:622a:50:b0:460:946c:9e47 with SMTP id d75a77b69052e-46a4a8b5cc2mr166659641cf.10.1734882636817;
        Sun, 22 Dec 2024 07:50:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734882636; cv=none;
        d=google.com; s=arc-20240605;
        b=CNfqwARF1NvJdMWzKTiWAKfouaRtaJShKRWM+WnzJtWEQdXh5D444yxghdO7cqkzE2
         i3d3PUVKoIwf/yPwOq1Ik6+Ujc5HvEvhTOncN2HCbn6QVCDgubzfw6kRj1hDcMGyNUQd
         g3LbALLlGCHmEoZTxDnIQ7RqUAnYzsQHc6T1NJKwvGD3yHMpTn68sRYu5plBPxaqPkWh
         n4jsPNoYvl3Gny6tXMvjs/w0Sq8qYncYC6TEA4w1jet1geGVjEgBM3n6vAhf4IjC9vX0
         aRM/i37YFb1nIff2S8e0OjSqty7KmPTZDL6BRfvDcadrgUKYin9Qd5TlQf657KwOx2oy
         ZSfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=SZKi/Apa7cPI59iTdI4kUeomL2d7t7WbqSaC9HBS4ok=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=gFTwoceL8ith95idQEmry1edkULpwa69q2KmbudBHXLPjbsSFDF6WD4vZw0msSwTrd
         1WamzOtxn49ZLHsSKsl9JUAo5cE4j2Sz7S+rCWtN38VkpR5x3gnveM5q0CL0Dep5duRL
         In5t5ce6tZOn2u6PUsYagdd1cNhs+e+ux/Pb6SGenNkyXkWLCWG6hqDXF2DL0fzmILut
         xU2mskgUayxUNxlXdWHbocbh5kxiB7VJP8uzYNZ/BcPLpdzX2udFc+/huLh+YOurdcs2
         eWO+63RZmUwo21odkNoyBCEinL2lkeNQ4N5KlLlpZQZDNXk1+LH0gdzoIp6i0qshWYpJ
         nh7g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3eb98a1csi95153331cf.279.2024.12.22.07.50.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 07:50:36 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted sender) client-ip=103.168.172.145;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-495-QNGcN3K4MCySsoms6_0hGw-1; Sun,
 22 Dec 2024 10:50:35 -0500
X-MC-Unique: QNGcN3K4MCySsoms6_0hGw-1
X-Mimecast-MFC-AGG-ID: QNGcN3K4MCySsoms6_0hGw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6816219560B3
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 15:50:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 439F8195608A; Sun, 22 Dec 2024 15:50:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 40C991956088
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 15:50:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A3D6419560A2
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 15:50:33 +0000 (UTC)
Received: from fout-a2-smtp.messagingengine.com
 (fout-a2-smtp.messagingengine.com [103.168.172.145]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-590-emWapdagPpG2dWcEWV7YAQ-1; Sun, 22 Dec 2024 10:50:30 -0500
X-MC-Unique: emWapdagPpG2dWcEWV7YAQ-1
X-Mimecast-MFC-AGG-ID: emWapdagPpG2dWcEWV7YAQ
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id 4FB5B1380137
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 10:50:30 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Sun, 22 Dec 2024 10:50:30 -0500
X-ME-Sender: <xms:RjVoZ7kizj2Jcj92z8zqtd78tLaPSYX_1NbzhjQVfARAnn7Bwu0Sjw>
    <xme:RjVoZ-0aeTz_43qLLt8tlZDBv2_esdwh-HaIKVV20vc9LIKNnP2nGVN8olzf1R32O
    EJsDS9Qot_USOb5yIM>
X-ME-Received: <xmr:RjVoZxq9nd0Po0tF39p5GyqGiN4ewmNDlezvLBlTBC4OBrJ6x39ucSTh4AZVJGuWnOvdWfsKO0dHAUYhh6atbbzsP1oHsEOiono>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtkedgkedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvffukfggtgesmhdtreertddtleenucfhrhho
    mhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhi
    drtghomheqnecuggftrfgrthhtvghrnhepgfeugfevhfetudeuteehvddvleeigfeuuefg
    ieduuddtgfeuhfdvheffjeevhffgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtgho
    mhdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepsg
    hlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:RjVoZzlM6jgJJZvAJTqGAsrfiEF4ekSpgL-PKc2-R-yMnBmd3aZ3dA>
    <xmx:RjVoZ51uDaulniFwo2xWIDxdwWBwnjU5AYeI5CjsOShqw0QcrJwA6w>
    <xmx:RjVoZyvDu4VwxzxSHsHyJsQ_rH63BgRjCSqahR_qDrGUuRT5yRzJhg>
    <xmx:RjVoZ9VMjErqssHaGm7RSY3YeYsLSaICfA9NhP4elLrOf0SAjsfAYA>
    <xmx:RjVoZ69FH2I9fh9x_XXilmvQm5ZToTkHXLQpjMsIayXD92qt3G6d120c>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Sun, 22 Dec 2024 10:50:29 -0500 (EST)
Date: Sun, 22 Dec 2024 07:50:28 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Any1 Having Youtube Issues?
Message-ID: <c7e7d8b1-595d-5ac3-f26b-3c8491c8198e@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: vGuuuGTvcyCRf_npRp2IIOWqRMbHtLMy6UufqQeVgw0_1734882630
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: af5qEJ5UAjmqON2UwiLT4mdyunrb--0Ng9Cj56sQFpg_1734882634
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: multipart/mixed; boundary="8323329-1033166007-1734882629=:2678720"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.145 as permitted
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323329-1033166007-1734882629=:2678720
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All: All-of-a-sudden, now, useing youtube-viewer or yt-dlp, I get the=20
following
ERROR: [youtube] 7BaVXvms_pU: Sign in to confirm you=C3=A2  re not a bot. U=
se=20
--cookies-from-browser or --cookies for the authentication.=20
I am updating yt-dlp with a nightly build, last was December 15, but all wa=
s=20
well yesterday. I have been also useing a LYNX external when highlighting a=
n=20
item. Thanks so much in advance for any guidance
Chime

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--8323329-1033166007-1734882629=:2678720--

