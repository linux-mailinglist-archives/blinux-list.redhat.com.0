Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3504B2408
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 12:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644577979;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MwcQwagoZKUc2mSCgBH7Veb23IV6MujiPLMb6nB6rKM=;
	b=Plkh0WaMuL2hFUexBZBymzC9cgFWnpVkpQGndsHZM86LPpyIKSZMzo3WBXNcBSYIdaSCCr
	8usBfBIYGeRBXAR5TjYiLFHFnSss0/guxGTEbbxH/30LhFcFd0rWGCwJiuIu9zYcTPFAp2
	Q3VxQjTt2AsYdEyBxgprl50/p0iDxSw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-rx_h_bcFNzm6FUSQzDcLMg-1; Fri, 11 Feb 2022 06:12:56 -0500
X-MC-Unique: rx_h_bcFNzm6FUSQzDcLMg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2CBAC83DE6C;
	Fri, 11 Feb 2022 11:12:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAD2E1059100;
	Fri, 11 Feb 2022 11:12:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 194361809CB8;
	Fri, 11 Feb 2022 11:12:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BB9Y6K002430 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 06:09:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 91E5C140EBFE; Fri, 11 Feb 2022 11:09:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E140142B966
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 11:09:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E6BB1C07827
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 11:09:34 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
	[209.85.218.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-94-X6e7IT-4NEKsnaBdPZ6HRQ-1; Fri, 11 Feb 2022 06:09:32 -0500
X-MC-Unique: X6e7IT-4NEKsnaBdPZ6HRQ-1
Received: by mail-ej1-f52.google.com with SMTP id k25so22128226ejp.5
	for <Blinux-list@redhat.com>; Fri, 11 Feb 2022 03:09:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=sGCRqvvcHtrfZl71ZZNTbVH9SIwLI5WvLrBu2b6Z2ZI=;
	b=hY0UCjs6VAEXuMQ0CT978flQh3IOdjqmkiV9p1PR8ZxPPVfJAzCvd+KgCGQEomdtdo
	bhK28TbjnMtltpDEAvHvAaLMyx/a4Tipr7VzHX513VYWFK/rrvm3LfXKLfRnU94Mlz8m
	JTh6GLzJDEu1cCP7mvhY2VH1HXbt7y6hjmyTSSfqaI5dZLXUrdIMkoPSdWgyurqgSkJm
	l9TXJrzz9LqmkG7fd9sP2VS7uqgj0l47ENojT0jdNLkQbCJwnjs6OhweLMCFm21jbd6I
	8DYFWmGwQ/7yMPFsEpo0snz9d6Rhydv1kQiG2tCdF4kWCs5B59lKCrCwJ7JqmdZUrwpI
	DaEA==
X-Gm-Message-State: AOAM533XE4U+792xCN4bCmI84B0e8Td+kjDIhw+W4vi+BsDDVR9KZL7i
	uxMcZt3aDwUYnQi/3aOfA1/kWlLTdkU=
X-Google-Smtp-Source: ABdhPJzmY7KoqSVL4oa200pPHAtATD0ddfEVydscCHZb0sIuyJbN587dsJqoPGVpldDvWUQp0LX8+g==
X-Received: by 2002:a17:906:7288:: with SMTP id b8mr934381ejl.88.1644577770767;
	Fri, 11 Feb 2022 03:09:30 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id
	y9sm10751976edj.108.2022.02.11.03.09.29 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 11 Feb 2022 03:09:30 -0800 (PST)
Message-ID: <ac7d2223-38a7-48f2-cdd7-0810c19fbc15@gmail.com>
Date: Fri, 11 Feb 2022 13:09:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Teamtalk and Linux
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

Hi all,


I was wondering if there is a way to use a TT client from the Linux 
machine without running a Windows VM?


If I had a choice, I'd prefer doing so from a console, but I know you 
can't always have your cake and eat it to.


Yes, I'm in a GUI at the moment, but am doing some actual work, for a 
change.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

