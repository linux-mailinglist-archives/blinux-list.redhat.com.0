Return-Path: <blinux-list+bncBCLPHQH4XEIRBW5XQW2AMGQEWXPFLXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0F091D1C5
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 15:21:32 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b4fe1af034sf37934986d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 06:21:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719753692; cv=pass;
        d=google.com; s=arc-20160816;
        b=YpKGT/5SKa/UJKU3CvPQpnU5OrNx0RBGtNYoo+zba84V+NzU8E3vGDhvL6izRXx/IS
         xRg1ZUV915Mf6px9vjM8pyNLszZX22lOp/lx2hEx3qpYv+5HOggrxAvb6s3sJjqIRuFT
         mDQuuITe/VFaPPS1OHbCiPRiWhKYPBQeF6797K+1K+LfrgKrwlWulPrXbtFB4MT2ErJU
         iPpU0qWhmQKe1RBOCkELAQkoOOEhPOJuwj2C8gEVS4cNkRmzVZ+8xIZ+8J6UXt1c4XDW
         RwXU2KLcGWWD4462djekmZ8ovQXncDiGVNuca2YKQDKn26AdtEZP9LgE/Qw0cUq2/+sy
         fQJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ntnat/niVgpX05UI0bumdPi16zHIAfYz1Sn1lnI4pok=;
        fh=YyLKZhz+P/Qenbc/5BxA9jZLeQqs2X91fANbYAr1vhM=;
        b=eqXeW0M5fCYqNaGgO7nHORQFBZDZYXRaoLeqn4SxqHeB1wNv9/5BI+6rQ9mLtmyFlI
         YDVtz2vqyeejIUKtbpTFaX08yZEOIl7WyZpYfxVhyy4IRqY+cOfev2hzLLFyHR+vkSPg
         qOa7QtV9XSPsjM469uS/aS8YS3hT27D7yHElNTaEh4NA4Hp9dWANTO/3YE9PDI36gHSV
         sbjc/wz1YmrtzQVYU2K56Islw3ngLVpZ5fno9GuLqSHu5pHWdOwy3ll48lCja4yAH1ss
         WVcYXLjK02WfwffqoeOEe0Wyl3cyKG2SzAG1SsulkuSKYyduGLy9Eti32qa5gJdAUMaz
         R/dA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719753692; x=1720358492;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ntnat/niVgpX05UI0bumdPi16zHIAfYz1Sn1lnI4pok=;
        b=v+eZIw/GXUFg/1SnJ5R3o4fDBLZ9Z0R+8KNCRK4fKC9SZun4IAzWXNLUzCMOeGkh3U
         OV5MWEwWsfqgflFBEIlzcPgtuPPS9gC6UmloIqd+tpNhZHMvypTA6jfK0/bhW8Rf4JJR
         6EOdFEoOgPnnGaQiKoKXH90uqWG4aLqBOsRl1GkTvCqIXxE+NalA3dDqrbrkKLCk0U8p
         ryQxEuhRHPJ0ZJdckrg85oHYNamH9xT0ZbTTM9zaqfqBT0OXJwXhpIWP5wX0Zn/TAPEE
         ClT4IodvOx331ReqWV2ZXeGlK7hdIWWQfTE525dydNWjkZdW8IzU3f0GWVnpa+n8ZKWz
         x9pw==
X-Forwarded-Encrypted: i=2; AJvYcCXs3+/Ls7Gv/A3piFusYB5xVnDNcUUUTIEotczGLJo5IN6xiJvj49Tedu3eryp3aHveoHkr0Sx6LRYcPhKTgx03EHWpUWnBxWA5
X-Gm-Message-State: AOJu0Yy7ojTR5shyLerXViy/FjNUoMl37d4RPwhR8jmy5sdl7nArjyoT
	jCgRl3OEfn5axraRI2ekxEb9TtyxnTL+egtESKDSqOsQlCpOYThMXx9PBeWJ1r0=
X-Google-Smtp-Source: AGHT+IEgiE2m1BLykIHXxpApthnlt0dof5S/dZjzrMmxcItbQykHX5xkeI//dhBfix093lSnZXlKGg==
X-Received: by 2002:ad4:5bef:0:b0:6b2:b32c:b89b with SMTP id 6a1803df08f44-6b5a5413258mr112559016d6.9.1719753691685;
        Sun, 30 Jun 2024 06:21:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5096:b0:6b2:a43b:dc38 with SMTP id
 6a1803df08f44-6b59fa97107ls43648086d6.0.-pod-prod-00-us; Sun, 30 Jun 2024
 06:21:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUIsLmrCqJaObrN9yxZTudm2nqo5SeOO+HDXMoA7DDjpdjcI68egRxEX+bWk7Gz9ix/dHKPLGGyjGF8smnv/0UovKnhWHL6IqR+NUtq
X-Received: by 2002:a05:620a:a1a:b0:795:195a:1716 with SMTP id af79cd13be357-79d6ba4d2a6mr1013754185a.15.1719753690833;
        Sun, 30 Jun 2024 06:21:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719753690; cv=none;
        d=google.com; s=arc-20160816;
        b=03Gb0VyYVAu3nv5RtNwkVTTI0Aj8kmxZs+oVPbu78980h2+PqWzhp3dzvaAru3Hd4e
         Ojfdh27kv4iHZc3G9SQIk2oJzSNSmVD4qZ+DpZAygYb5QMzUlamdH5V8b0qyXjd8w9K5
         CJ0jY3UMTfFpeL1GkuTST7ihVkMVoI+bTTle1uUzszqsvvhT7xFz0wMXXIKvh6ETYlhz
         JHm6vg1nf5v4IAloH0UD/QYGF3M0XjrYnx4Rx0QCK60LLVsyn1+r8TvhLAavC4WusJFs
         pY8w0qgEJVwjYMu0M6bKNL3T4oeJkUf4aW7y/dvyr0YeLDHmXPzEZMxxvW52ZBH4mPhV
         AYqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=EbFsrAUSLcdGLUkvKQtEbfsa3aME8iMlUFeaYn5VsTo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=MTGqGsG2uCa2eC05+FnIPnaNL/sFb7owc4lauWMOa0t66Bp8K27DDsS/+700u+yktO
         dyHIxhMOsi9RwfZ1hse6x+TCBz8d7UwU3lc5VzjLOycVsgVui3FyMWh/nxToHyqGbJlI
         CC2H5U7FALTNADgVMiS1M6aLeexx5zPbLMEcrJd0AfcqoZN/r57jYzrG3DuNnP4bMG+t
         92k7NmSEbr65l2sz+EkAGjLslLMGOmDXAdzd/rHHR/iAl3hikLbN1WZAybD/px1px+s8
         1NCovTSDBlgyZUvqk28fp4pjLmG+DMyB3qv8ST0vyYdhK1RxDE4pczZc9Bbi2ICHCg/j
         ubgg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79d69261520si649673685a.65.2024.06.30.06.21.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 06:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-178-ad706JKWPfeV-7gCNhc68w-1; Sun,
 30 Jun 2024 09:21:28 -0400
X-MC-Unique: ad706JKWPfeV-7gCNhc68w-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4982419560B3
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 13:21:27 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1504B19560AE; Sun, 30 Jun 2024 13:21:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 12B3519560AA
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 13:21:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8986E195608F
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 13:21:26 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-246-VY8UOSVnOFa5kn8vE-Aokg-1; Sun,
 30 Jun 2024 09:21:19 -0400
X-MC-Unique: VY8UOSVnOFa5kn8vE-Aokg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 3DBDE32065
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 13:21:17 +0000 (UTC)
Message-ID: <0b5e8cd6-6193-4359-8a8e-9b8081066b2a@jasonjgw.net>
Date: Sun, 30 Jun 2024 09:21:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: solving missing ptr record issues?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 30/6/24 02:57, Karen Lewellen wrote:
> What I am hoping is that there may be a way for my personal site email 
> to be managed in a way that associates a ptr record, for that specific 
> address..

My suggestion would be to acquire a domain name, have e-mail for it 
hosted by a quality provider, and never have to change your e-mail 
address again thereafter, even if you move to a different provider for 
mail and other services - as long as you maintain the domain registration.

Also, Linux is an excellent operating system for running mail servers, 
and the entire process is fully screen reader-accessible.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

