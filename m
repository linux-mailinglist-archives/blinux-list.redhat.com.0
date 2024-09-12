Return-Path: <blinux-list+bncBDYPVTOXSQEBB3XORC3QMGQEEGDFDRI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D04975E0B
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2024 02:36:01 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6c352e8352esf6288076d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 11 Sep 2024 17:36:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726101360; cv=pass;
        d=google.com; s=arc-20240605;
        b=HBTxzcdn9VRoBVAGaGeRqtg5S4l8rTHXR4APZ6y248G25WG5jcslR4l3jG1Sic+Vum
         yqj6lhWh/RZrZ8TYp1oSRMtBTW4EK7xT9L/Sx/Eyd6pRdhenx0/xwFEj6ObA5s1ZJEPM
         QOgDA3MFFWrNRttoaC04G6773wQIAph+sfV8HzVZEDTL/zax1QT5LbdV9U330v47yZ4S
         beGH/lajeFWjt3qthsvJE/nXVDgwbIHmyU4kTn/9l6fO40a4Dk7OU7cNGf/ewLSQBLyp
         +Bfj9zyhkuexrKeifSQ0mrpPf++dznE9uVeNJFnBvjGdH89iawQaIeiifZCknRSst4Qz
         O0Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:in-reply-to:cc
         :references:message-id:date:subject:mime-version:from:delivered-to;
        bh=iIoI8aIXI18HCcHopJCDuXh2IS0KEcwEzhm27HE5880=;
        fh=1giTGqFDJsvqEQpFxqjZtoshPE6iATRivUGWGnsWzAc=;
        b=NQa8KgL1HPZYfTC9KGlyFY+9uFJMR54DQLGDtfZS10OrR8tdjy4CO37kr2m/p/MOJ5
         q6DKTP07YKZD5Jk3rs2k7Om6Lqdg4fJq1MVzfJTSuKIm4V0LSVGI89+YIZ2ZYRUC7RV/
         b5G0cb4jn7wTzSqJ3Xgyk5gLbq23I/mFRzLA3M2TlIFQGD+1Al31BCpwTRvx98CzD9iI
         Pe8eS4PVeYJMTMPV/MT4bXcIMG9AQE8Mer5VhLGJV08fBMwosqvkhK5QuSk9wqe3N24y
         3kgigve8GhRh/fqGD4gAb+PDgzcPHjHbBh17+p9dvoVKs+8We6LU+C+zJNPCvIqeKOF3
         Fc+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726101360; x=1726706160;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iIoI8aIXI18HCcHopJCDuXh2IS0KEcwEzhm27HE5880=;
        b=idKAXwktUa6Eren3AFbOJpuPm+NqJVicuWQjOwQ48lhq9meJsQQLNk05usSws8kJ8x
         FeliaCEI+4Ku9RJU0AMrmwWHt2bWznb2/jtUR1zeDHOmPn4SSkX12s9H41yNORN95JMI
         gGvJMs2TGagtEV0yAvpD0I44eIZQQAEDuAoLYNI7Fc3ds5e/kPrG5fjw3foMxOMlQpn/
         aMlbw6jiL/xwKWDDDLjdvTVp8z3LEH9ogh/BBl6yvnXckJGAL+3nB0MaYpqQ7fymWmJr
         rArib3WZRHzmagGm3opewcppiFhH/RfUky1+QUJLfKj/at2R5ytfxi8d8Hs32TSdF5tQ
         WsRQ==
X-Forwarded-Encrypted: i=2; AJvYcCUXVQI582aRo1cCc0NXoQts5/8m8fDFvwV95g8f0qDOilKe90CyLYa5T9asFzEAepmhdOKvLA==@lfdr.de
X-Gm-Message-State: AOJu0YzZv0A2//H2n3+F2r1yrdoik+37CWS23jqUzxLuL8CaGY4mRU5y
	BnNE6VDXD4EB+K6LsJYmidWsTQc37OtVKjW6RsjajA0fsaSix4CsJ+6jX7x0pE8=
X-Google-Smtp-Source: AGHT+IGhobqxEOuANmdTKo/h+NzZowDHAh1KfcfKR4AOlzuFrsl3Mk0VpK8BhaqyDiTlOIVnTN87hw==
X-Received: by 2002:a05:6214:2d09:b0:6c5:739d:8e2d with SMTP id 6a1803df08f44-6c5739d8e8cmr16731666d6.0.1726101359518;
        Wed, 11 Sep 2024 17:35:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:f09:b0:6bf:60fd:c203 with SMTP id
 6a1803df08f44-6c5734f3b62ls4908176d6.1.-pod-prod-05-us; Wed, 11 Sep 2024
 17:35:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW6tx7AQW+Ak33obddYeUq/4xovBxuvblxmaxE+UZxk0gpnS3uER9/VA2YDIEQEkxaRC3ItHF98v8USAg==@gapps.redhat.com
X-Received: by 2002:a05:620a:2953:b0:7a9:c406:eeb3 with SMTP id af79cd13be357-7a9e5ede276mr193212285a.1.1726101358484;
        Wed, 11 Sep 2024 17:35:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726101358; cv=none;
        d=google.com; s=arc-20240605;
        b=MZb+nf530an9daUGmw+awwCUZ6eWDz+21sVABWgKDDqF1pqWG3e6d1xFRyqUY4nm/Q
         VsHFQs0W8MEjW1elxStfN/IWuURbY4n0PPXht2kSZZoPUYaFphLVh2018BIJ5id+X08W
         59MTMXK/FErFE2Wp+59VAUA0PYhq3y/IvEmb8GxvzrbKBLiH/zzYVTv19mhzasHbElcC
         2nRtIfnJX3SrruPO/k+yyOw40R99dDylPqUN0D1DMt8kL+lvCSrnaKYhnIAhKy9nx8Zk
         +k/8Y5ZGa+CU/yaMBgfxsgls4zDFtFVeX8t985faGqTzoQOpolX7+Fn8do6tg+JrVYpC
         jILg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:delivered-to;
        bh=jirGB1KcJPpWPO37sdiiRyo4/9UD9Pj0wFkfWXqqwDY=;
        fh=GRrx8I9j4LECRv73fOS45rRrYdcntSfw+a4KX2FKATE=;
        b=C6XpXsE3QwSjclMNASb0Ji/v3qYYEMnnFRMCzbAw4Qn4deFXDbuXzVfrl/a/GWRp6k
         ZPxMEDQVdxj0yYnBwyJZy/eoUQkvxra+Z3RCZOD15ugFRAa1zxpAIY/YFpE768npE3jg
         c9FsMAksin4nN+ytG/1/Scge+bAS3b/fjQqK23KNFDtCERjh3dGfM+rP1VVR7hokZTrP
         PQhNIOlbH5FWzi2FGVVcSqdp+23re0z3owOdNBxnabiEBJcXzdHpLRwjGYjrWHA7AiTs
         GcupG2oS/cn8MqE/YcuJJ/3Yfgs1aiFNIorPsH9gqAw5wYyjGaEEbeXwfRmGqDa8lxr6
         Wnxg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a9a7a55f56si1108846185a.636.2024.09.11.17.35.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 17:35:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-102-ckXx_rwEOMyYKMmoyki5cQ-1; Wed,
 11 Sep 2024 20:35:54 -0400
X-MC-Unique: ckXx_rwEOMyYKMmoyki5cQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7120D1955F56
	for <blinux-list@gapps.redhat.com>; Thu, 12 Sep 2024 00:35:52 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6A40C1956056; Thu, 12 Sep 2024 00:35:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 680491956052
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 00:35:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E5DD4195608B
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 00:35:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-296-jj4FLrd2OmSjLiSELXP6rg-1; Wed,
 11 Sep 2024 20:35:49 -0400
X-MC-Unique: jj4FLrd2OmSjLiSELXP6rg-1
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4X3z4j2W0rz15Nm;
	Wed, 11 Sep 2024 20:35:49 -0400 (EDT)
From: Jude DaShiell <jdashiel@panix.com>
Mime-Version: 1.0 (1.0)
Subject: Re: any chromebook users here running linux on chromebook?
Date: Wed, 11 Sep 2024 20:35:38 -0400
Message-Id: <55F61CEB-56FB-42DF-9225-1A94CF10141F@panix.com>
References: <b7b0df56-3f26-67c6-f36f-6f7428f7b711@hubert-humphrey.com>
Cc: Devin Prater <r.d.t.prater@gmail.com>, blinux-list@redhat.com
In-Reply-To: <b7b0df56-3f26-67c6-f36f-6f7428f7b711@hubert-humphrey.com>
To: Chime Hart <chime@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

pipx never heard of tdsr and pipx usually builds python packages correctly =
so they run since pipx tracks down and installs necessary dependencies. has=
 anyone got tdsr working on a chromebook? the environment is debian bookwor=
m on linux on chromebooks.

On Sep 9, 2024, at 1:08=E2=80=AFPM, Chime Hart <chime@hubert-humphrey.com> =
wrote:

=EF=BB=BFWell Devin-and-all, what are advantages of TDSR over Speakup or Fe=
nrir? Relating back to Jude's mention of Chromebook, while I do sometimes a=
ttend Zoom meetings, the screen-reader Chromevox really doesn't seem to hav=
e flat-review, which I use all-day in Speakup. I just tried running ./tdsr =
 I get a traceback line14 no module named "pyte" O, I am in Debian SID. Tha=
nks in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

