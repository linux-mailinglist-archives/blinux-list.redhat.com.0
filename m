Return-Path: <blinux-list+bncBC3NDNGRUAMRBSUT6G6AMGQEYNNAMKY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id F26DBA2391B
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 04:55:56 +0100 (CET)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-71e13d7e9f2sf1073563a34.3
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 19:55:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738295755; cv=pass;
        d=google.com; s=arc-20240605;
        b=DhwWzTyVTm4QYorr76VPvTaGFmZNT6DovSH17BuV7X9CaXoIISpK6R9Lh7cd1APZ8I
         Qhnv+Mj9AozyLvJxiY67seUAU+Jv4OBMPZbpf0KKrwl6JAG89Sv6QDrdX2DRSJLg1C6u
         37igBnPoUoYR/p/p+Ej1exTfH1Tc1a3Bv3rWq+TcaAPphfkISGRxpjQ46+yRzg5m4xqu
         129y3aOr2kNMKJDTamLOk1+sbai+UWCHhl450mv/MMzY0UENqSW2HY/D4Juito3dinxh
         0Nz5JhOQ8IEokUqI5kcMPFA+f/0VrWl7zCHgA8qDNfwGkRvcXWV3OfGqv0Ne/YUpaEnd
         45sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=hsjUYy8BEzSwbifFjWcqOPrqMfxcCiinENvoEHov/NI=;
        fh=iT9XbrGBKzJsWunFRc+BkTqBab0w13hzcfiwUAHv3BQ=;
        b=gG4xBfQBiaXRdFk/OCm3pQTe86S2f07pCeRerv8+E+FmBAwRURHxiJqxE1nUTFCg3m
         PjwnTZDtSpOgLuZeWUEucNsEqi23kkaYm4Dy6adpbSz7+5WE/ZqSMNG5pkbRKkO0hGML
         U6ywzDR9hXi3UdP+UA4BWxDnUfZ2DeykMnNKyJiYjYwzxjhiWk3s2h5QNRJsnf9gJW1P
         t5rXDNIh8+4nISBIaSZL5dZfOlsY5TcCgsJRjib1V596kClixznwmYBUuy98sjmV762B
         s+l6z8kgWEKQdEEyDW9dPUJ06Z1rh4x7wQRVQzTOXBV+3G3fDjgMvziQvFryK71oGHy6
         qgyQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738295755; x=1738900555;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hsjUYy8BEzSwbifFjWcqOPrqMfxcCiinENvoEHov/NI=;
        b=fjp8dNBR2fE/YS3TZC/f2w+bi+FNpUuG4boGgMhXY/fmq79z/ZNNmCMrOUH7H4L1Sr
         KM5zJ6vjzN4npNgmjQ0ieyfRB9CatlfHygT7AtWymNpn7GeIc1QPibuZ4xZI+L0zI5Ut
         7xwX1ESpXUiHNGno/D4KeQVTIAJtpW2Cs80HeGMekEjm+a1I2gjL9B4ZlJm0kmndjdIk
         LTgDO7R17sJAcQYYwEmpPwd15DVaK2KjYSOCcX88lB9BTaqb/Hd78PsN60F4ZTFhFV7y
         DIdP8b4BhdjYaFU2ItLafyDkpkpApUYs3y6pFUjKutQhFwjW/C/MTufxiT6bM2uSdjKn
         8oBQ==
X-Forwarded-Encrypted: i=2; AJvYcCUN47KglMKKGMRNCD79n1diTwg95hQy+ODj2Nmsktfv7n/zB7vJHBlBhiI7hkxJtMQ3r20n5Q==@lfdr.de
X-Gm-Message-State: AOJu0YwUuJXHnFuP/sdj1o8dGKI2qQEakfkY/cVS3jfbAidWz5dVaMck
	qVLOx8E+D0wMfOoLoD4r/Ln4Zhp7Kx8Dp3+zyYQIpwsbpEvcT2DDlo81dvG5OfE=
X-Google-Smtp-Source: AGHT+IG+AEIUlf48WIv4xSylXp2s5/KgpmZUM0W0RlRGjsHLxK2gj7YXKCYPjcS2LuRGMhT3jgd/uQ==
X-Received: by 2002:a05:6808:3319:b0:3ec:d34f:4c73 with SMTP id 5614622812f47-3f323b40804mr7382709b6e.27.1738295755057;
        Thu, 30 Jan 2025 19:55:55 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e6c2:0:b0:5f2:e057:d611 with SMTP id 006d021491bc7-5fc0ddff0c7ls697098eaf.1.-pod-prod-01-us;
 Thu, 30 Jan 2025 19:55:54 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXWND0+vnRGZBOgyGTG9i17jchWmpfr8Jjekw1lOZ0HjRzGDyPv/06Tx3OQZnvGEnzpPD7btRFs7MGLDw==@gapps.redhat.com
X-Received: by 2002:a05:6820:1e11:b0:5fa:6805:645b with SMTP id 006d021491bc7-5fc002d19a6mr7801114eaf.6.1738295754301;
        Thu, 30 Jan 2025 19:55:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738295754; cv=none;
        d=google.com; s=arc-20240605;
        b=HUoEOQETAahDZoWwgdJ5Og9V3p4uLrP+pMU5AvvuzJzeygXydIMuxZIELcxuOAtgJI
         r7lJg5SftBPY5lxOWMc/q/0PyptOrOA/MV0KW0JHgJ+MON/Nz+8XqULtwcscfla7NP43
         +7he05YeJBnG1v9IGGDhx95lch1hSlBuXigwaPumVyCjzdD23Y914Omu/eoXpQxOgZKg
         o3AO7lDiZabo+qYwYEORBgg9O45Oa7WfVrjFYddjnu+BJ6zGShMWO5Visb4XyZRekEj1
         nEmAkF+Qypn0WyPuRd0fY4ZHIbjmMQB773CJ9U0b51PhYEsdcV7JcMSu8eYQPqaANVzz
         MBuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=57hI/V09pEQ5gwR7POkaA/dQ1hmOWUHgyR6vtCdCG1s=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=EuUgQwOfvC0vbNnUkqRI144OCRTZ/c+L/KaBNBicRqBaCBIExl8vrT0+1GCEm92ho6
         FuTUSoLqsUFygGf+k7/0TDnj8wLpzJM8CWXu5ngevM0abl6NMi4Co3YBJhbmX09txvx+
         9YGB9F8EsczM3AJLD2symnQfNkl5BaaaojS4ngvbnuZyW8BG8yg0FAti6z5cqrpqVkkT
         e+utVFGqjSyzQ4j28YSOjQOxpG+93J8ad9J9qddZjPlNQxCQWzPKPnB64lay3sTrY94/
         Y5vn0wkmgcfyMBoFcxfvOZzjvZBF32xGWd48qz3r+ZX3348cg7Y8leMjnWZl6MqLvxJB
         jkHA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 46e09a7af769-726617bd88esi3277693a34.33.2025.01.30.19.55.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 19:55:54 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) client-ip=202.12.124.157;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-138-Finl3EcNPRC7OQ6BkDG71w-1; Thu,
 30 Jan 2025 22:55:52 -0500
X-MC-Unique: Finl3EcNPRC7OQ6BkDG71w-1
X-Mimecast-MFC-AGG-ID: Finl3EcNPRC7OQ6BkDG71w
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4400219560B0
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 03:55:51 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3FD351800984; Fri, 31 Jan 2025 03:55:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3D3C71800352
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 03:55:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF3E21800360
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 03:55:50 +0000 (UTC)
Received: from fhigh-b6-smtp.messagingengine.com
 (fhigh-b6-smtp.messagingengine.com [202.12.124.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-277-uBeiB1G3P9m0zrfHYF0MkQ-1; Thu, 30 Jan 2025 22:55:47 -0500
X-MC-Unique: uBeiB1G3P9m0zrfHYF0MkQ-1
X-Mimecast-MFC-AGG-ID: uBeiB1G3P9m0zrfHYF0MkQ
Received: from phl-compute-08.internal (phl-compute-08.phl.internal [10.202.2.48])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 6DB7A2540123;
	Thu, 30 Jan 2025 22:55:47 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-08.internal (MEProxy); Thu, 30 Jan 2025 22:55:47 -0500
X-ME-Sender: <xms:w0mcZyidNd0Vb8IzrS_NaeKR-ensLeA2sXQupg3lXm7pg9xb2HwlIg>
    <xme:w0mcZzD22zOonNiNrXmx1VposR7ZaiaYEIuQta9AfSq8lqyO6oA3yG4foh9Hm9ZTt
    X6vhiX_0aHPbk7uzfQ>
X-ME-Received: <xmr:w0mcZ6FKdz9kRWFQuA2p-0rwynmDpFHSOcTQQjYwRMxcC8e8R4dgIqxoMu3ydZEb6CX40i4vo8iT5UIeC_VlDNpA8E6lF0lr7D4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdejjeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnh
    epvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvg
    eshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhho
    uggvpehsmhhtphhouhhtpdhrtghpthhtohepshgrlhhtsehprghnihigrdgtohhmpdhrtg
    hpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:w0mcZ7TYJuKmto8D2Sct_lMsdw36z2IzwSCW6cimSmF8tLMgdPelkw>
    <xmx:w0mcZ_zAb0uWUTUNdZRdxHKZ-3XBorAl2lh6SFIdd7i0e3TnScH6ag>
    <xmx:w0mcZ54vLnf8Yfhd0B_I5fkj5Pp3y06ESj2IkZYa1V06AzJ_JjmluA>
    <xmx:w0mcZ8zLt5nT2k-y9D-oveBTqgE6itYR2ayNDECgRWwW6U8Bsumgvw>
    <xmx:w0mcZ69xe0fEcUMoRsfdBsyX58Ht4mr-22JgJMEzyFCDWe5bxSMi_-D7>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Jan 2025 22:55:46 -0500 (EST)
Date: Thu, 30 Jan 2025 19:55:44 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: more gui obfuscation
In-Reply-To: <Z5xIBQ5itO0f071J@panix.com>
Message-ID: <87f5ee91-bcfd-46b0-0a99-afb4e935b5b3@hubert-humphrey.com>
References: <Z5xIBQ5itO0f071J@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: e_kfsXJ5LLJZHtZ-IKu-uRjMbBCaXXOhMeCRTOHCGxs_1738295747
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5x7Kn_28fy2vUZjVbnMUBEIiIO4nDhfIxSOzT6PMhTk_1738295751
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted
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

Well, Rudy: Generally that would refer to filling out a web form, but in this 
case, I think I remember arrowing down past all the choices to apply, while in 
forms you would tab over to that option.  What drove me crazy in both ORCA-and 
at times in Fenrir where they had multiple words jammed together just separated 
by capitalization.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

