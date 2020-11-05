Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 516BA2A888C
	for <lists+blinux-list@lfdr.de>; Thu,  5 Nov 2020 22:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604610695;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vdvmfjjhnaL9DZajf5zYU3c5rsqi6UyQgFmWsixGlbE=;
	b=HyR2jbnDnW2EhFCYlZs6aaU6s2XtHdNYWU2gehtibRaTXwEbOpq4xyTDGk9zMYpItrjxLs
	TMsyou3m23Mdoun0urjvum2ezHVQ5i56Q1aaqAbhu1hgYDn85gYIl7bf63eAi1qgXjxN+E
	57VqN52knN62w3EdwsIsKuvhGQtk8FA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-323-_97I83x6MfmcuAeB2gmCyg-1; Thu, 05 Nov 2020 16:11:33 -0500
X-MC-Unique: _97I83x6MfmcuAeB2gmCyg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0AFF1868433;
	Thu,  5 Nov 2020 21:11:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E83C1002C1C;
	Thu,  5 Nov 2020 21:11:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F43E5812F;
	Thu,  5 Nov 2020 21:11:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A5LBMD0030456 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Nov 2020 16:11:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AD7F8F4EBE; Thu,  5 Nov 2020 21:11:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A7721F4EBC
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 21:11:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51E0B1021F83
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 21:11:20 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-44-l5BChd8ANNas4CiJh9sGcg-1; Thu, 05 Nov 2020 16:11:16 -0500
X-MC-Unique: l5BChd8ANNas4CiJh9sGcg-1
Received: by mail-wr1-f48.google.com with SMTP id 33so3369139wrl.7
	for <blinux-list@redhat.com>; Thu, 05 Nov 2020 13:11:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=dNPY+u9vbghw0XvnNEKNwMdTX46Z0N1te+qIAEiPwwg=;
	b=g2ZPit2mYhcjyCSlklIFgrmW4VxLbzjS5PGRr79XqVitJ2XUpMY7rx2TyWKaQI54HZ
	z6T34ishA6XnUTIqMr5nu9dISTq1NlaF1dd/uXK8zCOIzqDP52NuJjx96vCGyXkRU933
	5imAFIs6aUlpOkuM6DZ14LWwhDu27pXjmhmPyGJj8vUsWT/knENZB/DIyUiciwQOu91n
	FB1Y0m7UlTzjQ/URL6B71cyHa9IZ9th6aiO18wHJyq1YrCJIEpSrfggX/uEXX0KPm8tx
	iRgLaewWRBjohNWBPfNKYP7MFvYQPqugpTXl5yGCTR9Zq0bptYy1CJ3vdxkQOrBfUmQC
	LB8g==
X-Gm-Message-State: AOAM530C1Hn8bE1SuXm1qw/FjS48muet5tc54ErY4MCIR/GMFVrKbLdW
	56NbinCnXptTJRx2y0dKaphVYRhjKNN+VQ==
X-Google-Smtp-Source: ABdhPJx9+35TyzHWJynrNSQc2PKXgNp/kabZ2xeIFJx4DuXDUaSiptT+w6aBfkaVSop1sVIDhP7WOw==
X-Received: by 2002:a5d:6143:: with SMTP id y3mr5390405wrt.277.1604610674929; 
	Thu, 05 Nov 2020 13:11:14 -0800 (PST)
Received: from [10.1.1.228] ([71.65.173.238]) by smtp.gmail.com with ESMTPSA id
	a185sm4009839wmf.24.2020.11.05.13.11.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Nov 2020 13:11:14 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
	<45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
	<81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
	<b45ce6b8-b401-404c-618a-4ca60653e313@gmail.com>
	<DB0DA0B5-8B36-4A87-946C-5A199459B675@gmail.com>
	<9a624111-d302-090d-2de1-cf19db0d44ca@gmail.com>
Message-ID: <eee49b61-350f-e13b-f18b-06914680b795@gmail.com>
Date: Thu, 5 Nov 2020 16:11:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9a624111-d302-090d-2de1-cf19db0d44ca@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The script command would require editing the file, as it passes all 
information, and you have to end it. The suggested command just piping 
lspci out to the file will work much better in this case.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

