Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9972142C2D3
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 16:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634134897;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P4Hw5l4tIHuGw2VeO1A1jWvJrlxyyq0jvaCfMxkKahw=;
	b=f5IUN9aG1fzixdayImUq2EF7pn+EWiqI6M99rEd9K/Yg+PbLmIK88JXW2UJzB1AmeU3FOC
	O3MT+mwhMpKW/caNDhpTVBfcjAchUjrli7yxrOqEHLYoLmCyBsN0H2yJFobri1n+9ky1e3
	VS8DRfxy2YULRu37DR2+E0ASYunleks=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-npFUBHQCMBagC8CxmhLpSg-1; Wed, 13 Oct 2021 10:21:33 -0400
X-MC-Unique: npFUBHQCMBagC8CxmhLpSg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11A6A5B38D;
	Wed, 13 Oct 2021 14:21:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1B3210016F5;
	Wed, 13 Oct 2021 14:21:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B2EC4EA2A;
	Wed, 13 Oct 2021 14:21:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DELJvp016351 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 10:21:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B23B863F28; Wed, 13 Oct 2021 14:21:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACB6663F26
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:21:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 015A51066566
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:21:16 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-576-CfQzV4ZSPAayONl80mvs9g-1; Wed, 13 Oct 2021 10:21:14 -0400
X-MC-Unique: CfQzV4ZSPAayONl80mvs9g-1
Received: by mail-qk1-f171.google.com with SMTP id z40so2321191qko.7
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 07:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=W9KI3kaJ8gwEsc1N7AWs7C0Ka+98teO8p11/EdUVsvY=;
	b=GxQ/6hOvwyeNJYyBg7IIRrE10B4Vl4YZlSm4r08xA/d4lKhszZh+8zrPjXTDAuVuGs
	uC2lUasgyM1UbA8ul848j4p7i/mIm4GBIquypMuJ9R6zYBGyWEsh4dY1VN3V76uuiI6y
	8GTMztVayyL6l+g4U002sOk05bYY5aLFxSUhZXp/TAL1/zpyIL59VAE4mUmurz4mFVV7
	3ZktHRUuYYW4QNLwwPXim/D4YFLknzVSjDTlQf2rORo6mGBk8HJr9qcFhChW2cYmnDFt
	L9RpIGAmiYAly1fPsuRETQI8naB6Kk4vJOk8xw9tzX7hFQvoyaYkFQ828RVvf63hxIyk
	F4Iw==
X-Gm-Message-State: AOAM532TzCAEjC3qVlfj52j3m282RMQDrwQWmBSTZQ0w+Blo6AQd0GEy
	didITokdlV/zAFY1YaZJBFYGgl6TxnI=
X-Google-Smtp-Source: ABdhPJyrp1EGu3Ny51TidHqQZezH+PerPgDIJE7jYNY/BZsk1ryA8D/hAC2jNdTMHH3t2E2T149ggg==
X-Received: by 2002:a05:620a:31a4:: with SMTP id
	bi36mr12240378qkb.34.1634134873741; 
	Wed, 13 Oct 2021 07:21:13 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id 6sm598244qtz.13.2021.10.13.07.21.13
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Oct 2021 07:21:13 -0700 (PDT)
Message-ID: <093939d5-38ef-c30b-5b6b-49da243047ad@gmail.com>
Date: Wed, 13 Oct 2021 10:21:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: GRUB boot tone on Fedora
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <922a2740-b06a-c964-ddd6-c65e095507e6@gmail.com>
	<alpine.NEB.2.23.451.2110131003001.29121@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2110131003001.29121@panix1.panix.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
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

> If the computer hasn't got a speaker, some don't you may need to find and
> install the rc.local package then put a file in/etc/rc.local/rc.local.d/
> with a script that plays a sound and make that script executeable.


The problem with that approach is that the sound will always play long 
after GRUB has transferred control to the OS. In fact, traditionally, 
rc.local runs immediately before login, not at the GRUB menu as the tone 
would do.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

