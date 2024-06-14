Return-Path: <blinux-list+bncBC3NDNGRUAMRB4PCWGZQMGQEIR3TL4Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0F9909070
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 18:36:04 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5b97a20705dsf1585007eaf.0
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 09:36:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718382962; cv=pass;
        d=google.com; s=arc-20160816;
        b=tbujBOSrbpi1NrFMHxUradpVlQgzSypbItwttWIpYB4iEBu+citOQ3n3Ks0opvSEJ0
         J3Qm9doNyQSXudIEHWkPrXptwrHk6Aq15h3VEmMY6y0zcxDkcPSvf55w80fb+ouEiFsq
         MKlGjIREiEy/tJXSVJZDxQ2hQGyaQhJSzp3eG6L5XhoSp9OdpCYON/losLhMDMltkk9A
         i2A9WWxMkBAcW790QmjP/4f0vi+J+rH5BlpwOhrSVHC/VXlBVxDd6DimvxLZezJhVDRA
         alexCSkJ9UhOyvoqgqWCsm26w8zYI0Er9fAiUM7KH/uDDJIK5K8pnKsMQ8kNB6d+Te9K
         BpEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=HaHWCA4WLcB4xRi6iAjd2AKmxb9ANWHbBlZsEr1E39c=;
        fh=9HzTAk9jUArLUV1NGpLaDgta6ZvC7Jyu2YpOB9eFgDc=;
        b=eV/c9BFLNEf1jU7bnVMyKdtu+glxHSrey3+f2XE6VBKPNsX9PPcQsnD3UKbpFsSyhf
         rLqsIhDENpOqN/+Vd7EevGu7h/PcooRDKyNnyr9i1hSqTCZDq2ymzVpPo0NTbYPrXlFf
         wqkWHnbXYbIfrAK7oJGoupDm6oo0vKGHwV0dLb7KrRnGf6xjqQ4QFYg+PWO76QP+lh80
         LfnVh4HRz8eZV7EmQF+6M0Z7tF7Q1gClWsaUlbB0+6ZjX8wINFKX0c0pwhTNKgVRvL92
         +A9CNVUVO35EoiRzhX36q/sNe7x2tPrP4JZkJmEM34HiGC8gZR33OGz+XQDOXbCj0bMO
         BF3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718382962; x=1718987762;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HaHWCA4WLcB4xRi6iAjd2AKmxb9ANWHbBlZsEr1E39c=;
        b=ngGZJpBOWUNCMNj0HDGhZhuPj7DQRycDCyaTDvpiSgI24uGaFPB5n3AYz83pJA1rjd
         N1AgmNtrHMAEw39/4Fy32vJqHzAdvTyhve9WtfHiMXdZ5L52ZhaF8Q+Sp9sqeJiAV2s/
         +U1RU9fYfcoTnK/vm8IWgrv2a7zldrIERSgkM5xyL8voajXHRsmU130aGq4JDD1bUjc6
         HFdp4+eNHCQginQKDGz/k4AxBQVzyokL1YGpUW0HGdOWGbwUgJHZEKGa3T63yG4ss1pC
         sGIKX02y4b7K1SJbuibL1jKYPao/37KziaCNuii8bKZAO9dw9HoTcMWZGFfDZfy2wciS
         0pNg==
X-Forwarded-Encrypted: i=2; AJvYcCWrEz18M1T19dGlhwMva7iUuPBw5EujecHYKmGf74XKST3h7NzKBD3iiE80zlSDzQw6f2EMv5cIUV2y8abOPGysWVQmDAMkQVzm
X-Gm-Message-State: AOJu0YweCqA3qOZm0SsJ/IETuQmRSyITWaBaUYmdWqWJs81umegLlCgq
	9i5KZLfBem/Am8zwJmz1ldg9sXCJCZAdES0ltTF8E7efSRjZriLJ8VWO1VG1+/o=
X-Google-Smtp-Source: AGHT+IGZwnkOBr1caNgcIO2l+j58CRYFUYu+pBM6CZJYT7EamaovoQH2CNiXXy42AMREdqWMB30KfQ==
X-Received: by 2002:a05:6820:1c88:b0:5ba:e2cb:c853 with SMTP id 006d021491bc7-5bdadc30cc3mr3318087eaf.5.1718382962135;
        Fri, 14 Jun 2024 09:36:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:2514:0:b0:5bd:b864:56e3 with SMTP id 006d021491bc7-5bdb8645887ls509754eaf.0.-pod-prod-07-us;
 Fri, 14 Jun 2024 09:36:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXcEGioyVYZ6JjJG1ck23j1UHC/IGlBWuWky6tZpTDNsmsxQLKJ0RJ7ztnS2medjzFfwa9TGq5kpyHis891gLkmLRYGvHkwvs1OYt9y
X-Received: by 2002:a05:6808:114e:b0:3d2:1e7e:60a0 with SMTP id 5614622812f47-3d24e8a6b76mr4365072b6e.11.1718382961028;
        Fri, 14 Jun 2024 09:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718382960; cv=none;
        d=google.com; s=arc-20160816;
        b=NH588FKpdKnVdmnysGh0lRYqcRrNPKwE/poMNtsH/r71BUUOkzFQ9b/032ke+m4V5v
         sjxgzAjTdCOTkDu8wSjegI+4p5tj+HPAdfal5aoek729GHe7zQ+4iE1DDod9RkOTow6b
         u/v5KPfqKjA5BkbY3VFPqG1pu6vgnSnJY3aDbTo19OIBgezRjS5YouUDuatciBByRap/
         EUmn5+QpthgfYemNDbyBoEXWtnOqo3ZwgjkmVoJupfuvpidfC1FYxHlAHPnptlCyaRGK
         b6iCh0Z48/VuMSSqVTq+UvbbJXnaUsAgk0ab9TsX0VM0CDvmjuCMWkq5LMOPuqrBmE9v
         p/pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=rkimgl1Q/AhDYXFKusQK3Eue2099C6f0tJ7MxckHU5s=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=xYt+tbCJoVGxQeCmMblUMyvu1YmYAeaDHiKFyqS+3bD2HhqwZQ1E8o9410uyMpKq2v
         UJoch9oI+sAbxELRFNjGE97YeOJDksFwMrxtibc+KTqtrzhb/Gc5JoB6BNlMUAHx5EU1
         VjlauChF4hSvfkHN7PrfvfrgUG9uDL8YuqtKZGo7kQQC5ZYUKs98TIdKpmJ243Ep3N02
         dFNVO1cQaGpPNM7H38uixjKbTJnvuNRM5o4nWLUij9VybdP2srR1HYChHdCrb4pnGbNE
         /3JMMROger90a5s8E2DMYrpCtcz6SMXCST0VvWT6HGYlAeTGVpTULWX0wL8tPCoiK+SL
         ZQ9Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-798aadc2b8esi391450885a.209.2024.06.14.09.36.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 09:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.157 as permitted sender) client-ip=64.147.123.157;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-304-9Ig6lymvOyeRHeGQ8kpj4Q-1; Fri,
 14 Jun 2024 12:35:57 -0400
X-MC-Unique: 9Ig6lymvOyeRHeGQ8kpj4Q-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 52D51195608C
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 16:35:56 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 43B1F1955F2D; Fri, 14 Jun 2024 16:35:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 40F9119560BF
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 16:35:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B299A1956087
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 16:35:55 +0000 (UTC)
Received: from wfhigh6-smtp.messagingengine.com
 (wfhigh6-smtp.messagingengine.com [64.147.123.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-318-Lm1puredNfiqNGwIxElB9w-1; Fri, 14 Jun 2024 12:35:52 -0400
X-MC-Unique: Lm1puredNfiqNGwIxElB9w-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfhigh.west.internal (Postfix) with ESMTP id AC10F1800106
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 12:35:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 14 Jun 2024 12:35:50 -0400
X-ME-Sender: <xms:ZnFsZqLfeyUKcMYfpfsegjVrfE7NxxBagMs_HUk3FP4tBgyYT1ZwAg>
    <xme:ZnFsZiLg9y3ocHQwQqymIOFzFtBTbnHCb3D4i-tPtBCktMEJpsTiDyUQCRlzW2Y43
    W-BqLSJswMbd5mmx_4>
X-ME-Received: <xmr:ZnFsZqtSoVg2pEc506IOxpvBJ3W_NqXc3P4hPz-nzvjlBeHTyoHhowgSjttqmqhI1apf3lEwIXoVgXvO-oU313kvWeV-1n9Ze8E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeduledguddtvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
    rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
    frrghtthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheef
    hffhvdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ZnFsZvZAfXGC4CBZStt2Jo58JVSIz0_L9WBvpw87dAohE_Z-8aHYSw>
    <xmx:ZnFsZhZxvU0nPLFBsH8K8AOSEEcb_MedDNNW6XLj9-5oST_YbQr_wg>
    <xmx:ZnFsZrCGcSI8FKG-9nHnESt0z-x09HxUMksye3gOQ9JWgo588GNO8A>
    <xmx:ZnFsZnYKNuZ47ds_m3T85sm_HeanUsJmZAtv-Y6kz5d0ydX-XMZaqA>
    <xmx:ZnFsZgw1Y7VsrlDuUD_-3T9BcJ3C6abcUjkZE1fnnDYsIw8-KbbUvqXM>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Fri, 14 Jun 2024 12:35:49 -0400 (EDT)
Date: Fri, 14 Jun 2024 09:35:47 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: What Happened to duckduckgo?
Message-ID: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.157 as permitted
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

Hi All: Rather suddenly, just after 9AM Pacific that wonderful site either just 
hangs or displays a rather generic interface with no search box, at least in L 
Y N X. I tried L I N K S, I get a blank page. Also, I tried in L Y N X as an 
https  and it just hangs. I hope they didn't ruin it, but maybe they got 
hacked? Thanks in advance. I cannot remember that ribbit site which displays 
more results.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

