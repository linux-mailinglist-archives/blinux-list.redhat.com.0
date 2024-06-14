Return-Path: <blinux-list+bncBCCIDSOV5UGBBW73WGZQMGQEHYRQBRA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B83909170
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 19:29:01 +0200 (CEST)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-25475e2dd2dsf2595606fac.2
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 10:29:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718386140; cv=pass;
        d=google.com; s=arc-20160816;
        b=i7d3Yy8iAbXPWTYit9eBXYsbzBN5Ptgm/2a5szsGslvfw6VXuIuKte4wqn3lf5ja1U
         0l6p7TfeyrS9/QZyXJB+RYm/JaQHsB0INkSDLb8JAy+8oo+exy/FFaYtpZlAFqdf4qRE
         Bmdhh4ULvQgLv5hfoSmBub1sBXYla46TTI+9l4cOCbFFWTmUUgFYMvcBPJepApJQnLR5
         Y1W1TZsIoryEA91BO1Qu5Tu1ilh1AZxNjg894hSmfboaS5t8/ps79pP1JiXla66BH274
         Qk9bM1xD6ktea6KDNp7WYKMlciDaZoUlRJGJNclD1c8Vn5m5oRQboj7NPCO8OF5GeyZK
         Ozog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=zBdtcb619iWYMT2AVMoFni87QenSnR/c6ltRDp2z2Jo=;
        fh=EelTPCXDOAMctNey0upa8wz2DxK9qtmxI2j+FHOVgkQ=;
        b=uet+4ffoNxLodaYWVxuff85dG73B1yy3JaTcaT4o3XBwNT1nN2uUapbUfp3CzXf1dt
         HDsC/XymhFSQ6zwTg5j7y90edSvKPuetjckudz2tOtLhl884MnKOVJX+8sJt6DjSCieP
         ESIyXis5Ze9N+oEfOA5SbmwIYF9IaDij8RWmHcAfM4hbRKK1Lu4xzaOq4vLO35l+80eX
         8sVt/6EljjtZ0LASHMf9FIxjmSgCHXSASrbCH+R1w9J8fapLDCTTz5RHO9XkFr55OgGr
         ERYNDmILvf8JttdvUjXRAfBaxrbWVwonBsIGrd3854Dx6gO0VxOz5+9wBBbeX8j9Oz8v
         Lwnw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718386140; x=1718990940;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zBdtcb619iWYMT2AVMoFni87QenSnR/c6ltRDp2z2Jo=;
        b=c75JveQulDXChodUl8rOrdzFEE/Yn0u1IUSI7LU199OztrUKv94kh7TgnhAUrfNMMa
         EzuwvEEhWOAHi7qfVeT7Zl2BxOEtJa+JT9zf4D97gEAu49QnuQEa8nTBPDDPvj5lOG8k
         QL+/UGCeN0+fBaiAt50PjH0cDhflS5awzFyhLqq33vqL1A/ymedVuqJEsKOgfo/+JMGp
         YyQ+OHPQa6FtHp+xZs2/oVuAe1E8O/I3egGVbcwPlkG80M0U4TVsCPeQXSKlAzI6UZhB
         uX3ZRn5IclWRnHVepOAbivEqnQ622ddZyd0Xu7Z80NgpgNODsY9tIrw0EeZyKta56YT7
         lE0A==
X-Forwarded-Encrypted: i=2; AJvYcCW1bJA/efkpgpJebYWngtkpilrW2W1lur1vLQhcvUUv1YObBgAnXEU0tNgVkgoNF6f00JfDpUkQuuUQv/3GJ6gO+o4cprXa0iUF
X-Gm-Message-State: AOJu0Yxxq4KWfhxmFLsapCzrwOocEM5Nl+vuMr55RBvkX/Inw1QCZy6V
	aYDcRY7K9JaxvEfSwiS0Ezu19mBgDP4cu0XyZ5SuzpjrEbX5catq2J95nzpkD6Q=
X-Google-Smtp-Source: AGHT+IHEaFv3jdA9hQAbfz23ghEBsjHwkEJPFx5gmxNMAOypg6iTXlygcBNwifDmWj3ZKDv3ZsdHjQ==
X-Received: by 2002:a05:6871:295:b0:255:1819:b458 with SMTP id 586e51a60fabf-258428536admr3754467fac.8.1718386139436;
        Fri, 14 Jun 2024 10:28:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:718f:b0:254:6df2:beae with SMTP id
 586e51a60fabf-2552b6aac4cls2287736fac.0.-pod-prod-04-us; Fri, 14 Jun 2024
 10:28:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUKeaCymgkK7fG9vz7hdWQNzO7DzBhXKGvEpvyMUGtLF0y4mpE4NewJUmC2mokr7FsMGhpIPodFFc6AC7gIUP4P/xU+5kspwkkF/KIe
X-Received: by 2002:a05:6808:1446:b0:3d2:2c03:863a with SMTP id 5614622812f47-3d24e9e4fc4mr3167914b6e.55.1718386138624;
        Fri, 14 Jun 2024 10:28:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718386138; cv=none;
        d=google.com; s=arc-20160816;
        b=YLodippnU6MLKmZpR0yBK11r3jcawQg9LMWPhZM+uaqYPwFF2lJ5UUTZ4Dz9ug4A93
         KzwEZ1TDUpMsk+fz5wG3gX4vrRI0yv1jWvODe0isY8xKFhmnhj7rcYniWJLwIdcmOk8U
         6xSPSmujd2hw2Lf4fNBex+y0z4UlRQGZSF6EdCqIyeLI8VC4H/YfdETA9VEfiKs2TUCp
         ak5MHSon6Owqoeu0jHQecLoKHAwLGH4YM2HzKyWiMqaRniyyxboGBzR4IhKfBizfGh8n
         PhkcaHSF1n/5Hbs/TSQQMqZNxtnsRcb/h//PgzV1FmE50xxJaByxysQv11ZENxdDgzis
         hX8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=6/u4tUEAMpMb/JEMy8GzxFl8QmMQzOoXyS6PuiVQgF0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=G8XyGzminN2lozCtPn42Cm9SvA33V07lL6cULS9JfTc+pS/Kx6QbuPXx4XuNFdub1u
         2ynncf5NoS0SgnmXsdIC70TClf82yQZQxZK/O7Gkw7C6+bN3qf9UIC49ysWx2YiRJATU
         XBZSMb6z91AcExKePVvFXIJtmb7y9FfOn/j4nRZ62XKCB2hMiwJtov+CgDm7Hobf2IZT
         yrhg+q8DbVsfkirVO74jfMyQx4tTZld8sGLBx/GTZAo/hILlwNmtdhqb+3Q4W2BZ+ZCE
         uToTI6bnfpUh2d17DXVoNffaRlRzIQ3YlvQzhLt8+dlczvqUtkqt4oZXZMAVSfzjBY5V
         9Kww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-798ac0877d1si413667385a.717.2024.06.14.10.28.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 10:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) client-ip=173.228.157.52;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-43-CQ6FNxW1P6eBnIEnxzYNnQ-1; Fri,
 14 Jun 2024 13:28:57 -0400
X-MC-Unique: CQ6FNxW1P6eBnIEnxzYNnQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 69D6219560B0
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 17:28:56 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3D66519560AD; Fri, 14 Jun 2024 17:28:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3AE5919560AA
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:28:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AFE4219560B3
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:28:55 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-531-h90qApY-PxydxVpj79ePmA-1; Fri, 14 Jun 2024 13:28:53 -0400
X-MC-Unique: h90qApY-PxydxVpj79ePmA-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 361101FC3A
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 13:24:57 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 1E19D1FC39
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 13:24:57 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id B066B1FC38
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 13:24:53 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1sIAfS-0003Zz-0W
	for blinux-list@redhat.com;
	Fri, 14 Jun 2024 07:24:50 -1000
Date: Fri, 14 Jun 2024 07:24:49 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
Message-ID: <20240614172449.szw7ot2brjxpdjxy@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
X-Pobox-Relay-ID: 035616A2-2A73-11EF-9340-C38742FD603B-04347428!pb-smtp20.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Good morning. Just now, I was able to load ddg and use it with lynx.
I notice it redirected to https://lite.duckduckgo.com/lite/ .

Chime Hart wrote:
> Hi All: Rather suddenly, just after 9AM Pacific that wonderful site either
> just hangs or displays a rather generic interface with no search box, at
> least in L Y N X. I tried L I N K S, I get a blank page. Also, I tried in L
> Y N X as an https  and it just hangs. I hope they didn't ruin it, but maybe
> they got hacked? Thanks in advance. I cannot remember that ribbit site which
> displays more results.
> Chime
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

