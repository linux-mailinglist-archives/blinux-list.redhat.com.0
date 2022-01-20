Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21053494EB8
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 14:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642684603;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hDUvqLSyQLUI0VByDC8hnnSmsKnf8pOhDWgsHhynlgs=;
	b=dXRH7ok4uTGdUho/jgeWeEBtwOPi3VF/WNkI4tXPnNGXgU4Y/bBxBhCTKpeufSw9dqD1WO
	rqjmMZxdcTDRLZ6tAsAs087cKNKj7rLUuGs9VD6+M7LUkeibny/Lpjba665tWmiQXdWjBX
	xGCY6rasbV21d3ruK9r1EOt79ISyxu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-vm9x-wliNp-K0JVdLNyb2A-1; Thu, 20 Jan 2022 08:16:39 -0500
X-MC-Unique: vm9x-wliNp-K0JVdLNyb2A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE72C814246;
	Thu, 20 Jan 2022 13:16:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0334D7D70A;
	Thu, 20 Jan 2022 13:16:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C0A94BB7C;
	Thu, 20 Jan 2022 13:16:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KDGRWu005304 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 08:16:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 77F7940F9D76; Thu, 20 Jan 2022 13:16:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7352640F9D74
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:16:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C1861C093DC
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:16:27 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-280-HqT6ZLMmMvm0KG195p-4fQ-1; Thu, 20 Jan 2022 08:16:25 -0500
X-MC-Unique: HqT6ZLMmMvm0KG195p-4fQ-1
Received: by mail-qt1-f169.google.com with SMTP id w6so5796291qtk.4
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 05:16:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=rk6dRNAcYS03wX61d9VyY2XNz9HQt/ofkdDP7poVw7U=;
	b=hNKx36M/Ry75XEmeisr4VsTsUCmiiXcq3+RfL+F0jpDJBALA9N0ZodLbBbTjyR1M6c
	8jwEOzK+Eik9LHO724MsC6C7AvlIt2QirS2lswUeseMLspdV3UEJqD1BlrZj2Sh3FCxU
	5VyZQPFYmDROc84tGyAsmT79/tQdgTv0EYQvMW+YeiwWheWpswpevsuFWniVvcMEmxWT
	aPtUeczvg7dI3PANsaOFEf22Czf9x2GLASBp8belmCKMHMZ4L9v7y/Ab+ocDbHWP3FTe
	1X5gw804DSj0F9L1oWki33ykdlh/jtQvGakNo53aSQmtnKbge3qkj9hwYkYAgO43dgCL
	lo+A==
X-Gm-Message-State: AOAM530hZdAjRVwbJZBk51W6RpHrxMHA6DRYBG9z+VK6Miw+YPyRNrwv
	/U4kLwCBkf9D8J3e0R8A50zf6KYypR1Nvw==
X-Google-Smtp-Source: ABdhPJxxTOpYOhJ7AFEHpsP8lB/I2yPNxzIBu/fV1x59TGhTVkCUEztUUslddYEsEh8jtwgKDmAHDg==
X-Received: by 2002:a05:620a:c52:: with SMTP id
	u18mr25173145qki.203.1642684584785; 
	Thu, 20 Jan 2022 05:16:24 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id n9sm1354691qtx.85.2022.01.20.05.16.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Jan 2022 05:16:24 -0800 (PST)
Message-ID: <a2c2b194-8309-80d0-dce1-15fa5d65d274@gmail.com>
Date: Thu, 20 Jan 2022 08:16:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: cell phone industry practices
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
	<63B06F55-87DA-433A-8D57-B216A22FC21A@icloud.com>
In-Reply-To: <63B06F55-87DA-433A-8D57-B216A22FC21A@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Unfortunately, I don't think these phones can use Orca at this time, 
since last I knew, the at-spi libraries Orca needs don't support touch 
interfaces. It is likely that if you could pair a bluetooth keyboard to 
it, Orca may work as expected and you could navigate around the phone 
using Orca's laptop keyboard layout, but just using it independently 
without a secondary input device may not be possible at this time. And 
then there's the problem of actually getting the keyboard paired to the 
phone without eyeballs, which would be a challenge on its own. It would 
really be nice to be wrong about this, but I just haven't seen any 
developments that would make it possible to interact with a touch screen 
using at-spi.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

