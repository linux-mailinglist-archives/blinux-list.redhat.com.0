Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 762B81646CB
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 15:22:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582122128;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wdJiJfL92U8RcyQA2NyttQnCs1od8xY+I3R9F0bqyQM=;
	b=DIDTUGTSa6X9Exy+G0s5b9Ssvgc/UtTBgGknBrK6CL7aZjUsQMsM8lLABpnsZ8R6euTwAz
	UUJug2vZjSASiT8mVqIIPDE6guKGWltt2HIy/mYLJ+fJx9M/WOlxdv/HQv9LLVUU+n1mUL
	j7loXYtiDqzxpCbw3tmOTsnxTElFkWw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-407-KXBj8T-0MAecs7Xg-aQMcw-1; Wed, 19 Feb 2020 09:21:58 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D4D6107ACC5;
	Wed, 19 Feb 2020 14:21:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C65E67792F;
	Wed, 19 Feb 2020 14:21:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C209E1808878;
	Wed, 19 Feb 2020 14:21:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JELjEu009975 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 09:21:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6702FF77AA; Wed, 19 Feb 2020 14:21:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 625A41D086
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 14:21:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8DC78008A0
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 14:21:41 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-207-UDPco_pOPPKOdMuZuz1zOQ-1; Wed, 19 Feb 2020 09:21:39 -0500
Received: by mail-wm1-f51.google.com with SMTP id s144so473246wme.1
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 06:21:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=GAwtJWCQ/GtdFix2aZDxGAbcIxnIilelFjwxFWltj0o=;
	b=ZL7UhZJKttPs/KF4hMWf2RUj3ClaYGkK1z7fR7hopkq5dMKZ5hDDVpvrCZA58AvE5z
	n95pa+V8hM0eYSTM3mX74OkEagdp8wkWY49L44dfGOcoqoCx8YgvMxop73pcf1kYutf2
	rc4O+Xfr4++R+arY36hTDce3NSFqomyXy7z2S3sohMYWBaL+fb2Iz5WgfKAFXMKmCxt/
	5TONlqe9j/WUO3JSh/RTGIrnrVwuHO6qGH7KwEM+o6ffyiXUq6vQtuVx3GxNH67X/IVQ
	rt+0yG1eNJof+2sbaL479zI9HLbzPgDo7ta4YTwyooamOuJDt3bZy191uJFKD4oaJhQX
	CA4Q==
X-Gm-Message-State: APjAAAUuYPoipUzSJpAkJnK2RPfyKH62f4M1efJCo79MD8qSB0DSJu2+
	8IKlEsNOb25XdeBoXGBj6dW/PeVe
X-Google-Smtp-Source: APXvYqz3acnQL+b1OV7akjd7yWUriz+yKFfper2accwzD3gtqLdepghD2dv+6ooj9oLlDo/e1B1/mw==
X-Received: by 2002:a1c:6408:: with SMTP id y8mr10411732wmb.130.1582122097731; 
	Wed, 19 Feb 2020 06:21:37 -0800 (PST)
Received: from ?IPv6:2a04:b2c2:1810:500:5986:8698:7100:1224?
	([2a04:b2c2:1810:500:5986:8698:7100:1224])
	by smtp.gmail.com with ESMTPSA id c9sm3201491wmc.47.2020.02.19.06.21.36
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Feb 2020 06:21:37 -0800 (PST)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: virtualization and speech
Message-ID: <39e3ee40-2693-98cc-0bb1-a186541dc0a8@GMAIL.COM>
Date: Wed, 19 Feb 2020 14:21:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: UDPco_pOPPKOdMuZuz1zOQ-1
X-MC-Unique: KXBj8T-0MAecs7Xg-aQMcw-1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Am I the only one that's running into an issue with virtualization 
software and speech? I'm running into qemu cutting out speech and 
virtualbox acting up with isos.

For instance. I was installing debian in qemu just now and the speech up 
and died. No worries, I'll use virtualbox.....nope. No luck with that.

So has nyone else run into that?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

