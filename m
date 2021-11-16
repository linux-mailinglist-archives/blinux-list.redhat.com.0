Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF73453C95
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 00:12:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637104374;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aAG+xgGL5KA8kXNHvJrRUYJjIcGstgr1BTS65CVXPDk=;
	b=YorL14sNm2HoRcCLIi3KtfCey0B7VYvKV1nQsDpVrZlsoRIgPrPuHFpEzW1IhMzeUn1eJx
	z52luOFQiKKYv9J0GUriHuMTvQ9asLaI+4CgpNjbofQdvAvAbPHvxdB6drR4YW5HAuKySM
	AMAFIQzH2hcZWse8zj/I/d8SqMlOlWI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-UeSKjhwYPbOZKDAvKDTmWg-1; Tue, 16 Nov 2021 18:12:51 -0500
X-MC-Unique: UeSKjhwYPbOZKDAvKDTmWg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 464FA1054F91;
	Tue, 16 Nov 2021 23:12:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F1D15D9DE;
	Tue, 16 Nov 2021 23:12:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 510631819AC1;
	Tue, 16 Nov 2021 23:12:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGNAlfS020672 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 18:10:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 38A70404727A; Tue, 16 Nov 2021 23:10:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33F8F4047272
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:10:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A781100E65A
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 23:10:47 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
	[209.85.219.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-527-KHv8tIC2OFOs3dj7_J8Iug-1; Tue, 16 Nov 2021 18:10:45 -0500
X-MC-Unique: KHv8tIC2OFOs3dj7_J8Iug-1
Received: by mail-qv1-f54.google.com with SMTP id s9so653318qvk.12
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:10:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ZVEdZiFtkuSGJk94v4B/44eMahAHfJ/C5KmIXck3vyM=;
	b=g1v5lClrBnT647ibAeT5TMYjbNKl+HcjPrZaXsSK5J8FGJqGuqpV1EiARtW0+um3ZI
	Xm/ty0WAg/80a3401daMpOyTMzpZP0KPzQ3uw3Tvt+k5QTrGHm3HXuXbRXxG3b3Kvtd5
	73gq/M3KiyasI0ocOpYSG296v9s+VmWhLDATcmO9/m1iaVl5CxFZD7JW+V5KViLeugpP
	p1efKQInuSx53L2oUyWzMYBsCjcYEyui8UcEELahJK1gtB9H5TpfmQrseC7fmiaMfnAT
	MX9xzJ68lMC3XwZ/nJAAcXz5UJopgETpfaLoJh0tY1DWlk59QrhlYXH1GC/pgdO8VgRl
	OLVA==
X-Gm-Message-State: AOAM532qCx8yqYs9LteuSMM54JiJ7dNCQG39dp4nPwenEcm48myIAMD6
	40AXK0BjRU40jHpny8aUuHrBHrX27W4=
X-Google-Smtp-Source: ABdhPJw3ju9kgSkLqxfwMyIiZ3jth37V6CYm76NdIWGnTYeMlvpkyISvrsC0t/mbaR1fn1E38NZRIw==
X-Received: by 2002:a0c:ef03:: with SMTP id t3mr48999475qvr.32.1637104244871; 
	Tue, 16 Nov 2021 15:10:44 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	c4sm9277237qkf.122.2021.11.16.15.10.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 16 Nov 2021 15:10:44 -0800 (PST)
Subject: Re: Correcting an sd-card?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
Message-ID: <d6a2de22-8e36-0bf3-1055-3b145ce37e9c@gmail.com>
Date: Tue, 16 Nov 2021 18:10:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes. You will need to unmount your sd card before you repair it.
sudo umount /dev/sdg1
should do this, even if you have an automounter such as gvfs that mounts it 
automatically when you put it in your computer. This is the safest way, as 
sometimes umnount is not an option on the desktop menu, and eject will make the 
sd card inaccessible until you unplug and plug in your reader.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

