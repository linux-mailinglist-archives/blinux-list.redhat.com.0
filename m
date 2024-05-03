Return-Path: <blinux-list+bncBCNJV2PYXEDRBYN32OYQMGQEOLABSTY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B528BACD2
	for <lists+blinux-list@lfdr.de>; Fri,  3 May 2024 14:51:47 +0200 (CEST)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-61b028ae5easf170166117b3.3
        for <lists+blinux-list@lfdr.de>; Fri, 03 May 2024 05:51:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714740706; cv=pass;
        d=google.com; s=arc-20160816;
        b=tK8BDFl1n8fEhfYCUd0AV98mPqftpiIkso6vqbwZtFjNAY5NvV67mbz2gqHMKtsAPj
         +DVla0OON3P3JmZrBp+142rH4VkhvPYPjr6hYAmK76PqBU2W0A/9UT2+7dyJe1A0MR/c
         j+gHvjdCcDkKGUACQS0gxXNFTnoagOKC1en/THa6yqahtKNzWOWLMS+GFV1DQjEqsdiB
         qrwMJW1GaEbj01GceQwuJ9LUuBrjtcEzWvlzXkXRMCzM0FoQp4wMHTwEfUTD2hfkoTvI
         y362h/L7TcGb6PU/PjH+xW5/NFyOJxUzPE0C2ln219QsgnLd1z62FJ3LcHGSjACgyLgq
         T+cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:user-agent:organization:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=jas8hnMotG+IGoyOWyT1TYau1aXc0RTibD5OFBhW/s4=;
        fh=3QvcGiKvxQ4sloPy0uV+uc2uh+/5FLpoOIMEnCtM27Y=;
        b=fS0PzNaEkFn+21lFrFVKSPaRuKLbgJinIUdISzjSDxk+VFAD7Pbc1tPR+lcV7pwcJ/
         4NdixaHIGzTdRTuLgSP8FKg16vfgLcBP3KSg6pu9nHmubjlJUcB9BCJc8i8AjXAJeyLg
         KM/99foPg+F8ddKyFCeIZWpH8vBFPsdio1BK7Q7vikq8jnBhPFRFHQbw6Xw6z6whuXmn
         ItAatG/Nyr71Kd3B/Q6XoTRUsgqy7ZAHobOM8Bshvzi54yyP5GqXFMC6fMWdrwSVtukT
         ZnBIBUMhcF1paLI/T3QIGPCht54VJi9eezxyN5NiLLUTJmGKbPx+mrt3QMoAiNZjdNpk
         fcUg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714740706; x=1715345506;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:user-agent
         :organization:in-reply-to:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jas8hnMotG+IGoyOWyT1TYau1aXc0RTibD5OFBhW/s4=;
        b=M172AliKIqdSci+9kKNB7DPfFFGR1wYzr5fdcSppy1d3Gx6+50rTKYJgJRGzOib/gG
         Dt3I2XDsbOjAFYn3ngSWhmEsvgn8htt4cMnhl5sIxRmlnLlHSSPh29s+QvffOj6W0wX8
         xEWx2ni6Ev7MG4mzR4KDUglF8WsBLAXs6mwhpVQfCXrRHFmoy0KaIskTdas6tk9JRfww
         xyM/9ZVocSQVzf9WUbHH3xgV7EzexZq2hZLLQldagBsgc8w36zPfGNhxzw70lbWZ9SKb
         2ZRsN/p3GHpVZ62aEQUWscz0gjL8PgETISrrscbmZBvcE6I+U6GA7wiphRELFYjEmHcp
         lqBA==
X-Forwarded-Encrypted: i=2; AJvYcCX1KuqGsExRvF043gy+L89fmZAgjDnpBwNeUrb+MxP4DtqTVkUPB0aNA3NFMG7F5FBKjFgqs/mn7B6b1mljy0gXBc/dUg5nwDtU
X-Gm-Message-State: AOJu0YwcLBncCO4APKLXGF+TVOw7z+txjEY4vUuQFz6RCxfrG6alZjc1
	gnaMURHJYqi0KzIJRW2XjGPmRv5CExXPtb+Rvtkr+7spCvSs/Pin3ljvVI2vehs=
X-Google-Smtp-Source: AGHT+IGTf7wCekHXwHLJ7489GplCxjdVhat8t17YfU453aU59KOyEwvSABh3DKcyBeuG1CxJCdk7RA==
X-Received: by 2002:a81:7246:0:b0:615:4e88:c036 with SMTP id n67-20020a817246000000b006154e88c036mr1056503ywc.41.1714740705535;
        Fri, 03 May 2024 05:51:45 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a29:b0:43c:761d:ff90 with SMTP id
 d75a77b69052e-43ca7f41751ls22499851cf.2.-pod-prod-07-us; Fri, 03 May 2024
 05:51:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXi1BzPjyOjNgZEYPf6TbtYDrHjFuhKObaDtQSIu2yaWxN0eFIP+Qj2ALYSn4HkY6EZKBauekyabcW0UHGs/XL3GS/A0LtCOq0wKuyW
X-Received: by 2002:a05:620a:12f6:b0:790:8110:f7a with SMTP id f22-20020a05620a12f600b0079081100f7amr2104882qkl.65.1714740704835;
        Fri, 03 May 2024 05:51:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714740704; cv=none;
        d=google.com; s=arc-20160816;
        b=WTSF3wxvyWRhwi7T2Hw7JZWgphQ5TiEU38/xRu7cYvwWk2MKow0zdWx1zTBEbmgrt2
         1v/Q8bxGCtC83OgKHN1p1q9lV3lYsbWkcCpagg+SI0H/ILlADar7Ed4HKhUiEEqCERjo
         5lOvmL4DMHl/hns5NO+QJ4hJnCvsaYsaROS1sTFvPDhg3kohhzoThdsqoZVCNlDocCR0
         Ma2S6QbVowDsl62nC4DLvc2Q6JAEDo7Dj6vDW6mvMEYcRIF/0yHR2dh80gMHbvYbndY8
         Cr+UjBtdjL/OoKnEYGxBT6X62fOIrlx9uc+JTn2Y6/B6/4w/Fe4Vf6YdVFbthXevouZQ
         AYsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:user-agent
         :organization:in-reply-to:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=53si+VMrUJNqY8PBKUzcNL2OTc01MuLU9C4h83ZJ++8=;
        fh=x0HVBJP64k4SriRDpNTQg5OkPvzs01G+nFJibb/BCzg=;
        b=xNidkKj4DzTQkyO/yBs61OQoKGjd73j0JuAb4uiHSOmHfL+dNyp+XuRkOLeWxFE4Y7
         GeVeor9ctEWosBuyLgljFrgsmM8l82Au3lptNJE5U1vBm1E1No9k+7i1aOEDiN/BbkHp
         Ak00V3iNYrwiygMHDGcYcr2QCVkXloxiI6TYdGP0mPM9bAqZGsEIXLq5J4vH+jG2KHMq
         SwenK1QmzEA5EQQrO/JZA9XCa3Ih+OFHggL5PJFwSwKpL3DF5s50zt8TDPjadV82C1xq
         q0vu84m9oJkGY4JtVHzLMopygXO2ickvtmilJzNuyGYG2RyrGr62BoLE0u1h/civrqhk
         vK4Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id f21-20020a05620a409500b0078bcdf3f068si3595056qko.370.2024.05.03.05.51.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 05:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org designates 140.77.166.138 as permitted sender) client-ip=140.77.166.138;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-53-Y-KYQlf0Pqm684JEmK2eRQ-1; Fri, 03 May 2024 08:51:43 -0400
X-MC-Unique: Y-KYQlf0Pqm684JEmK2eRQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 376878021A4
	for <blinux-list@gapps.redhat.com>; Fri,  3 May 2024 12:51:43 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3328FEC683; Fri,  3 May 2024 12:51:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EED7FEC680
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:51:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AAE080021A
	for <blinux-list@redhat.com>; Fri,  3 May 2024 12:51:42 +0000 (UTC)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr
 [140.77.166.138]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-256-gwwdaFcJMn6e8tfx7Ek9NQ-1; Fri, 03 May 2024 08:51:40 -0400
X-MC-Unique: gwwdaFcJMn6e8tfx7Ek9NQ-1
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 5CDC1A0331;
	Fri,  3 May 2024 14:51:39 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMDuBsLw0TpN; Fri,  3 May 2024 14:51:39 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 450B4A032F;
	Fri,  3 May 2024 14:51:39 +0200 (CEST)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1s2sO3-00000001Jlw-02F7;
	Fri, 03 May 2024 14:51:39 +0200
Date: Fri, 3 May 2024 14:51:38 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Elias =?utf-8?Q?St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Cc: blinux-list@redhat.com
Subject: Re: nvda2 speech and debian install error
Message-ID: <20240503125138.ccmtstpyuyyyyf3e@begin>
Mail-Followup-To: Elias =?utf-8?Q?St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>,
	blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
MIME-Version: 1.0
In-Reply-To: <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: ens-lyon.org
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: samuel.thibault@ens-lyon.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org
 designates 140.77.166.138 as permitted sender) smtp.mailfrom="srs0=ykl5=mg=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org"
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

'Elias St=C3=A5hlberg' via blinux-list@redhat.com, le ven. 03 mai 2024 15:4=
4:29 +0300, a ecrit:
> ok how do i install it apt install nvda2speech can't find any package i h=
ave
> nonfree defined in sources.list,

The packages are called nvda2speechd and nvdacontrollerclient, they are
available since debian 12.

> how do I start the server after installation and make other configuration=
s

I don't know the details, but readme has a section:

https://github.com/RastislavKish/nvda2speechd?tab=3Dreadme-ov-file#usage

Samuel

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

