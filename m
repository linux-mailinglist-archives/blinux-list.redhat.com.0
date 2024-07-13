Return-Path: <blinux-list+bncBCNJV2PYXEDRB77KZK2AMGQEAGAQUBA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7019306A5
	for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 19:12:33 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b5e69ac59fsf34387026d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 10:12:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720890752; cv=pass;
        d=google.com; s=arc-20160816;
        b=FumPzf8mLlfoLBuVZXvWXnaW3G9xskB4zkeC3y28pOz0mb0Iznu5gZx3bqqtERW2Gt
         HCwNg01Rl75FNvOQnfylF37c5W0zRKSOhtqR/qdy7XS/NeMbg3ZGSSuOTJMURL3+gWrc
         SAmqLp+Z8g86rdnU+faoJyKBkwraGEAcaTSoXZZ2rUZHyRS5FeRs2z+72ArqygriARwv
         pFz+8ozA2W4Tf+TwuSNlT0ep0fcldA1LGUqF07Lc96rjQTokI6Z9YjbGyhLnYyh8HCj4
         hQHwmnHvQJ5qgmDUW1qUIjz1CDhEaPjL/6MX3jF6/MkbiKhKq1XNp5mA8Iqr8Q8ghK1F
         MDiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:user-agent:organization
         :in-reply-to:mime-version:references:mail-followup-to:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=KAiHi0N+BkN0ZZR8KEOjlvqVazWTpCnPhwCkTrv3Qsk=;
        fh=20ibm+l0lvve65NmbLwzJRywbJ+JSlM01a7cHgLP+tw=;
        b=t/og+KkDEPRhujUupCz797Amh9xr6v3ZFZOQormMAvuFH3KKFhbxpuHHoSD5Mp1VZQ
         EzdoR/tjvs03CjJfB6O5Icr5pq7DATIFlW9b8WXfF0JWxvUZtWBy7RdYhI1QNhxD9LMD
         u1sEUkIEz7Htj6c8t7q+8Fh9pqxuAI04ZgbWnXruOJuGo0AjXuZ05SqYacGs4FXKd/cr
         ccQlFQpyC38p+kl78m7qcXKmfS0cEcmgEwXmxBt1JuxK9S4Y7R+kgx/41sMfGc3J+dBp
         LeRp7JbPhuDpqDDqS9XBonUr9TOshFuG7ktRBFw2ToTxf7sp04Dgv+JARsyQIVo/awpz
         27lQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=m//9=on=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=m//9=on=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720890752; x=1721495552;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:user-agent:organization:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KAiHi0N+BkN0ZZR8KEOjlvqVazWTpCnPhwCkTrv3Qsk=;
        b=VjUhDUw6brmMTsOKl62fp5gKIIp5K8YfiyDK5LqMtgXPrMi8nX9n5hcln4ExUJeC9j
         SrKOzQ4C8Ywa9pV203CzOMwnIyMna4x0A+rhJwXixQwaTk2qH69/erocLC6dGNFhkBAT
         zMepgT/V0F86MnTqNElMBsf09p9KPdnKiEuBOB+z0pDrDD/czsxTOGEbTiNp9Vm3ozvk
         pgINmNNcoBv3IqJ8fnVH4f2trfPcaqbdEeMSrSNS/XoPbKKWc6/tJhHvx10UXw9NeY/z
         PPv+2JpeUporYxCFhiiJGhGG1IQe5xI9zvwbePlPklhMNNIsf75f+1n5Ah2UnmOsPlyZ
         AfkA==
X-Forwarded-Encrypted: i=2; AJvYcCWvCeHaXv35VSmHCQPCC8C2xJ2c0pU0ISqAx4DuYqH1xk9L9nYr2KqulosQCxYNrKaWkhBANvLvj5LTnCzcyH2ZovTJAamZHwFF
X-Gm-Message-State: AOJu0Yw7jcI8fVgiH0f8wU9bwN4hhFogK0m1ItyeIogYrpuTkFB2QMJN
	aRCK/ZKtsRO63A2y9rgATeEQu2LkT25JQRsaMOFeXewIpycD87h9FMw79LADpo0=
X-Google-Smtp-Source: AGHT+IHuZ6OaatObSWMC4JpNkYDTGnmCJbtQ55YuKgdUBX8csRcw24yICU/Mm11j7rnhM685dkU96A==
X-Received: by 2002:a05:6214:2601:b0:6b0:64d5:62a8 with SMTP id 6a1803df08f44-6b61bf1163cmr191877026d6.33.1720890752266;
        Sat, 13 Jul 2024 10:12:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ec6:0:b0:6b4:ff5f:6a65 with SMTP id 6a1803df08f44-6b74b440993ls61599466d6.2.-pod-prod-05-us;
 Sat, 13 Jul 2024 10:12:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU8kMn1NXxjEWgj7xNOGq9Qv67eCf6iYAexRtxXBY+4RIX0ebUB8DvP5SQL7oR5YhjizlMOHF2BlYWKDN9birciXD0c4EJfNx8WCn7s
X-Received: by 2002:a05:6214:21ea:b0:6b4:fdfd:fece with SMTP id 6a1803df08f44-6b61c1b6e6amr186839436d6.44.1720890751171;
        Sat, 13 Jul 2024 10:12:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720890751; cv=none;
        d=google.com; s=arc-20160816;
        b=FY00peZDbu6HqfdUEm3hOF6dduvq+2upFc3QrERgfrqOySPdRFUGWfl4VeG2QxnGsq
         8VKSGZwp0piea1j6siGY9Lu3+JQdjjF06cqUa6+G4Z/BUXrRcjwAKwCP65l3fw3h2aiK
         drTSUQNqaj/zdzozU/QAZKrvIln/5V5cgvREkIlG0CvdraoMfsWExg+Cl5gluVFIW5fi
         pXEw+5fNkqssBaxogMdVTAbsmoP8QY3/gt5p8RSJi1bwNMtrxGTb9vdeDYpXbMKuez8m
         wSJPQ4QKTtx2aBzmxxoPX0dT6CnOAWJ2zt3BtcJv1aBwpoVyuPpkxzT4DsxI8TR5KHr0
         e75Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:user-agent:organization:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=X84Xv9jqUwAFr69t9akQGigfM/sES4SXPbwh1h2DWvA=;
        fh=fH8a4lfLeqjuUrgBmtPKNRAuTgZRbLa/nO/G3widhbs=;
        b=rJWVIRRdtA1rjV90xp5KUdlSqSAm8z6v63tbWkfVP909twyLlUYbJycsF8BP9YXSDB
         P6GhzhOxgbRKmw6Mgf5/Irw+Hn4qgEfqu3n0F25FIfav5Qwps+QAYhw5iRVgfhEXLINL
         Hs8FkVB7ZW03fpkeujCmiw2mRYU+mAvTJTdsNLTJteuwPOtif70OSkzmKR5h0m/l+tA1
         8uW5LlVuN6RsjK7grxQQBuEtym2gzTNcHKUrPYjZJz6kenSemZu16rCOMrzj2O5uhDTN
         kR4GzANFWxNKG1MrR22Sj4DXMhAYYVLkcXl1ydXmQdB61+0BH0HEdLdw56IsVpVpJGl3
         QkQA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=m//9=on=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=m//9=on=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a3c7fasi15897686d6.459.2024.07.13.10.12.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jul 2024 10:12:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=m//9=on=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) client-ip=140.77.166.138;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-396-bQ43YSy5PumY6KsKeVyORA-1; Sat,
 13 Jul 2024 13:12:29 -0400
X-MC-Unique: bQ43YSy5PumY6KsKeVyORA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 83A1C19560B1
	for <blinux-list@gapps.redhat.com>; Sat, 13 Jul 2024 17:12:28 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7411B195606C; Sat, 13 Jul 2024 17:12:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7162A1956066
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 17:12:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AD30419560AA
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 17:12:27 +0000 (UTC)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-434-HEURVQ1MPGym8duquv0nEw-1; Sat,
 13 Jul 2024 13:12:23 -0400
X-MC-Unique: HEURVQ1MPGym8duquv0nEw-1
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 381E0A039E;
	Sat, 13 Jul 2024 19:04:32 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zaZWcfHuQuVX; Sat, 13 Jul 2024 19:04:32 +0200 (CEST)
Received: from begin.home (aamiens-653-1-111-57.w83-192.abo.wanadoo.fr [83.192.234.57])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 1C1B2A037C;
	Sat, 13 Jul 2024 19:04:32 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.98-RC3)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1sSgAh-0000000DbqL-33zn;
	Sat, 13 Jul 2024 19:04:31 +0200
Date: Sat, 13 Jul 2024 19:04:31 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Rastislav Kish <rastislav.kish@protonmail.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting brf to text?
Message-ID: <20240713170431.6qz6au2a3jmurb5j@begin>
Mail-Followup-To: Rastislav Kish <rastislav.kish@protonmail.com>,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <9a2447b3-e761-4615-9b4e-e2f058029af0@protonmail.com>
MIME-Version: 1.0
In-Reply-To: <9a2447b3-e761-4615-9b4e-e2f058029af0@protonmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: ens-lyon.org
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: samuel.thibault@ens-lyon.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=m//9=on=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org
 designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=m//9=on=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
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

Hello,

'Rastislav Kish' via blinux-list@redhat.com, le ven. 12 juil. 2024 13:07:25 +0000, a ecrit:
> I think I could use liblouis for this, but it would require putting 
> together a conversion program,

The program already exists: it's lou_translate, with the -b option to
request backward translation.

Samuel

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

