Return-Path: <blinux-list+bncBC3NDNGRUAMRBNO6262AMGQELA6NMNI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E7F931F7B
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 05:55:35 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b7431d8475sf107814476d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:55:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721102133; cv=pass;
        d=google.com; s=arc-20160816;
        b=Scek8xeGNx6n9EbarHIR8IT4ygZliOewD6PDd9I55S4ygKokdMJamfuBY+SDcWFkXc
         +c4MCw36ly77jrOEKUlxotyRzh/N+pxTVB77jZjFmL8P60hXdom7tz2Jt1jkV6tbLNGQ
         9lr4pm9nKY8vfKdpH1Kdd3WmL9Q0c/KZcH7niYKKZSg1WJCCVBIC+m9ReeGrIys5hQ2T
         aARPicKdnprWeaIGapSvcWNEiEPT+hBdglip/ymQ/JOULNKScO0PRG2LZAxjqn74REbj
         z/L9YbC/xMciQj+JvnhRpyWtKWjaX8drI/N6VBByIyEZIvijatJPTS5DeMWTiSLAZqTk
         m/3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=ik4RgzPCnwL9ZBDUn0u2vjF4HTsLhS1NB06AfvS7uyI=;
        fh=AXCMh9/kDee/cfjrrcS9xMSgqMy66ur0SlRVUCK1C+g=;
        b=Ux/k7PqkaKSIEtAUK8CuBBlE1kj14VaibYt89EbYcFJAsMdv4JfyK6p0Zg7RitpDyb
         6jtxqD5woGZNyqvl2enktpZswsbhGd2eQVE87FdQmA9MqSXV2EN/oTtWz5bCBnt/BicH
         M5Zx1qc23LKrptwPvSoPRsH7hBLy8oVkj1w1If/ua0tiif1EtUlOwAgZLbcXIQd1lUwm
         bwJVrL22WlrfEzDxsZfzYZFhEf1hXqRxrxWTyqJyXg8n24u+DATeZvx/6EGXAJ2q2Ljx
         /hfbq8c4FeOSH1EyytXF+/NJGU1WDSCFBjqLKRxFBzcz2/AhiO0tp7Hfeb23AnAbchEl
         T1+A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721102133; x=1721706933;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ik4RgzPCnwL9ZBDUn0u2vjF4HTsLhS1NB06AfvS7uyI=;
        b=q6e6YBWJY4FDjbCpAwz6KjdoMGprcYNSVIwfvqnzcsMrcMmcX6X9l5WH+jCal5fR0I
         migRlwf2mtCElB/wtEZYLNrA1apw04C3/l8MOhGqkdizdhOo2ZurbNLXJT7Fp6TyZAdv
         ByR/XPoKtnPU2w7A7DEswBhGrUDnJOS4Bs0jvhakErzZQOGpkFqdwykUvq0nf0YPclVj
         GjnX+9+2v6GdGvBWmnZVpNlMv6nGS2I2+KO4ExF4+l1p1PvwWvURLA7gRLaDF60vGAgV
         8TIeeysQC8dO+MQ3aJ10YrtzHIWiDmgYlQqf2MDY82t3ITPXrhqXVsgN714SNEkcH8aP
         949w==
X-Forwarded-Encrypted: i=2; AJvYcCUmqrcbk055Y9lMxlc7hu9ruSuJNjwyU5SghWCqQTdwBbV4u9ww9UTcFOOgjmlw5CHsWL577MHJwSfgSTCVAIqR6L9xizz+Juv6
X-Gm-Message-State: AOJu0YzaqvLBmPCUAOfTpefhO4SjxT/HNyoEcC3k+7fu1W2YMbgGbAWk
	CgH1d9gObPv5r1IiXagGQpi1EjwXZA/wAWeHmAI4PqAhsUVkDZQQt5H+iGpLOuk=
X-Google-Smtp-Source: AGHT+IEDQ4Ls11IDEyITz64tt5zJKbs/ULQx5cavSWrFe0v5O0pvXlqJAftEwIb/HifCkVPLV6JvmA==
X-Received: by 2002:ac8:7f81:0:b0:446:45eb:6af6 with SMTP id d75a77b69052e-44f7ca0ce4dmr11334911cf.1.1721102133540;
        Mon, 15 Jul 2024 20:55:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4f97:0:b0:44c:2c6b:b01e with SMTP id d75a77b69052e-44d07ebb902ls86354611cf.1.-pod-prod-00-us;
 Mon, 15 Jul 2024 20:55:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXCrF0X7zj3ZyLaM108lR90h7VZ9IqMcydEVGsoRQK2Z8Tyc/KWg5iBv+gxBTumX8clV/SMXKjSIDaLyIbkrQEBxXHZfqAwSScW14oC
X-Received: by 2002:a05:622a:18a2:b0:447:e76e:d8de with SMTP id d75a77b69052e-44f7c9fddd2mr12310271cf.1.1721102132556;
        Mon, 15 Jul 2024 20:55:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721102132; cv=none;
        d=google.com; s=arc-20160816;
        b=bx6qkxVRj/yZRa9Q9hzN3Ox3UmCEM5BR2WJq0Sx2WNQBpK3xbXNtxofS5mhfUlz+qk
         VCsZV3+f8A1qDc3viiPYiAWH7x2aXjzpzmsM2RwMYIMS8Ze2Ul//N4Sv70hL8agPUhBS
         XuoVsa13QZDWdQOeh1HAmGQBos7nzWj4vNS0sBDWWa5YHPwgb9F0ogf7T9T2AVs4HvFx
         OYPZb7h4zzDCEDfwzvFS60hoNqYg5RZZrSFy4PANPgKZeDfsEe7+G3tc1BL2Dak73ZG4
         LWjBC3/GuZHzmBfUhUe2K+P2S/PskIhwqAqBxfZUowNWCmndleLLJdOctd+HNlj4mihm
         yH5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=cGMg/Moc3sKU1P1dYo8if913OVp6fQjEw8IE8aUEDbc=;
        fh=EnmT/XM52Cw5dKgKwAcAwrWfgpvmbC8BORRziwvcwVE=;
        b=0bqsSTJrZV8In31dzWhF5p7EJj5DgrMLQqcizIII6FlQIweexI1SHSowyxZWXkesDi
         rxDBTaZfSljEDJgoz6ahOUnxNSLNe/3KKAs3wvQrwzp9lzJ9kBBTQiLwfVUZusKJjKnR
         J0blULQDyIuYMv9nTefeh+wpGV9heAj06G2qTMalI87zpleEg1ota5YdlL40J5OC1AFe
         Jtshankl4k4guTw8ItIakNEsoBwRjyiOL+XRnJ2xQ3VoAEG7I6zy8gSOJ/WY5PLuvhQz
         SPKPHuBP2mUOYY9x8H2YpirMb7f2jSeSe1k/coD2S7gxW4w2bRK8UAq7GVQCSqyCirLK
         noQw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b82c83asi66543631cf.693.2024.07.15.20.55.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 20:55:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) client-ip=103.168.172.158;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-582-oyhi--uFMey1BFh3l8LJwQ-1; Mon,
 15 Jul 2024 23:55:28 -0400
X-MC-Unique: oyhi--uFMey1BFh3l8LJwQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2FBA719560BF
	for <blinux-list@gapps.redhat.com>; Tue, 16 Jul 2024 03:55:27 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1E4BC1955F65; Tue, 16 Jul 2024 03:55:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1BAB619560B2
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 03:55:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 93B9C1955D42
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 03:55:26 +0000 (UTC)
Received: from fhigh7-smtp.messagingengine.com
 (fhigh7-smtp.messagingengine.com [103.168.172.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-659-zybPiMbdMz2OxYJ4ufISNQ-1; Mon, 15 Jul 2024 23:55:23 -0400
X-MC-Unique: zybPiMbdMz2OxYJ4ufISNQ-1
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 9390F114820C;
	Mon, 15 Jul 2024 23:55:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Mon, 15 Jul 2024 23:55:23 -0400
X-ME-Sender: <xms:Ku-VZs6Bmzs1kHgbe71fZZcpFzGO_bFTLeCW9fRl4k_MDRAArULKzw>
    <xme:Ku-VZt50s612zM2cmBHwfri9OyEi5MddElMAV-RLBDpAvDFVPxAtVSE_zfLe1D9pG
    YNP5Wb0SI-HgbXyIyo>
X-ME-Received: <xmr:Ku-VZreOcGjzwIgg68aU37XAZwhxGER4J8_uroJ6Ex-5Y0oqweh6S-9L4-ashwN4_fmRzxkSPzvMlSRArQ1WAQJJX7ZQaqH5PGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrgeefgdejiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevufgjkfhfgggtsehttdertd
    dttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdq
    hhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfe
    elkeejiedvkeekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumh
    hphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Ku-VZhKavB8vyP2OUt0nsp4WNZpiw6t0bTBuPV0Snrrh0UQEIQW0aQ>
    <xmx:Ku-VZgKKlda08cDMAsrnPNaHiExMRbxjZDYbavJsSpii05T8oEtcpg>
    <xmx:Ku-VZiwraC7TH3nQdpuHOsBpuVmo29VpJXnMuVPZ5FckU7nvDbtrRg>
    <xmx:Ku-VZkJ7UcBi_ysflXYlGwJ3KckTy1F9vSiCo-w4xJRYE2Kl1rlDrQ>
    <xmx:K--VZnUVE3fnrDdJU3eY2LKdk8r22222qFzJeBrwcDOqxCn8TKq1Mt7E>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Jul 2024 23:55:21 -0400 (EDT)
Date: Mon, 15 Jul 2024 20:55:20 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: blinux-list@redhat.com
Subject: Re: speakup and elinks interaction
In-Reply-To: <ZpXs8Lk1QKF-3nHB@panix.com>
Message-ID: <6f2c1979-67f7-039a-efca-d24638f0f5bb@hubert-humphrey.com>
References: <ZpXs8Lk1QKF-3nHB@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted
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

Hi Rudy: Would L I N K S work better for you? I think it supports more sites? I 
find the sequence of saving file in both of those to be confusing.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

