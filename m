Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 848733D2CEB
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 21:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626983052;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FkhXEArleTBFMjuIHO1iIJpmd8SzK7Gia/Y4pPqwa5s=;
	b=f3L010gIJBpWuFrtylCBPcK/xBzRw9oubSIeciedpwi3jUQoidjJ8oUzODE+uK2rhZ+Vc3
	NwhzDvK9e+/V/0P+oi9K3qoX88zhU5vFw2akeL1KVAPqfdy9aGbI5PXpFMMFFP2RFGK18K
	x58IuhX68GEk67sC0BJyCvWNLjmyC0E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-483-4gigmja3OCC9qKoJHRxHhA-1; Thu, 22 Jul 2021 15:44:11 -0400
X-MC-Unique: 4gigmja3OCC9qKoJHRxHhA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A548910086C5;
	Thu, 22 Jul 2021 19:44:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF4AB604CF;
	Thu, 22 Jul 2021 19:44:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47216180BAB1;
	Thu, 22 Jul 2021 19:44:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MJhpmv013160 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 15:43:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BCED120AE82E; Thu, 22 Jul 2021 19:43:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7E9620A8DFE
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 19:43:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 859991064E6A
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 19:43:48 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-275-oxqRtlGtNnygHklZWxNvcw-1; Thu, 22 Jul 2021 15:43:46 -0400
X-MC-Unique: oxqRtlGtNnygHklZWxNvcw-1
Received: by mail-qk1-f173.google.com with SMTP id k4so6503907qkj.13
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:43:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DSt4jrAPcKZNrheqIyOb8t0gBDlAX66IeT3/ieQjyvs=;
	b=SJCwdXCz0sZokH9yw0y2xzpLFV6hoqK69jj1WyHZRQpJuKpsVO6LYBwd3eRbSn3Q+i
	aj2OIqsUIlGP00Me+P+yClGIfl/kjtPdjNNm8unwFlJpjyty3MXMYUAv369exj42Hg4K
	mKiSf4K14fDfvpLnVPMpV3PebkPnvjbCDEOX1pcxlRdpb5/pD4fQtmcLNUlXjnEgrgu/
	oefomP9kla7tT5RAfXK7rLsq+bCimlZ04TBdyANkQ8MesR/oolJIr6CBk9z/fpJF/SCP
	1bvrWRZ2DheVgTcnhFmq4p+LxHZX27QcpQzHeOzyBF0z1amKW0vWlWX6AeCsbmlweii2
	xAuQ==
X-Gm-Message-State: AOAM530zN7eAKs8dD01A+ozDNCbSZULSJcAen9TlCq+xURfpHxAkbk0k
	FATYtYpkdnl7Z6E7TYZgo3lyUyTTW5Y=
X-Google-Smtp-Source: ABdhPJwyXT1Pt4YnBPGrRxooDwIiM3i9vbWasRwWbHGfKQXvpD0DH+tipLOnNcGgKDHpw5tpX3IbKg==
X-Received: by 2002:a05:620a:1996:: with SMTP id
	bm22mr1378830qkb.224.1626983026051; 
	Thu, 22 Jul 2021 12:43:46 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	u11sm13370158qkk.72.2021.07.22.12.43.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 12:43:45 -0700 (PDT)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
	<6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
	<84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
	<70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
	<9BB781F9-3AFD-4475-94BF-CB4DFE7329A6@gmail.com>
Message-ID: <90a473e9-09f5-9384-3b5a-14f0386030e0@gmail.com>
Date: Thu, 22 Jul 2021 15:43:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <9BB781F9-3AFD-4475-94BF-CB4DFE7329A6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

First, be sure you have a .local/share folder in lightdm's home folder

sudo mkdir -p /var/lib/lightdm/.local/share

Copy your user's .local/share/orca to your lightdm home

sudo cp -R /home/<username>/.local/share/orca /var/lib/lightdm/.local/share/

and fix the ownership

sudo chown lightdm:lightdm -R /var/lib/lightdm/.local

The next time lightdm starts orca, all your regular user's settings will 
be used in lightdm. If you change your Orca preferences often, you may 
want to script this so that all you need to do once you apply your new 
preferences is to run the script. You could even use xbindkeys if you 
like, especially if you're using that already, to run the script at the 
touch of a key combination, although you will need gksudo in order to 
prompt you for the password outside of a terminal.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

