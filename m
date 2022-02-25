Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F9B4C4E81
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 20:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645816757;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R3FOm4vsRIsjJATIYBAwZ0WRcdVkeAW3jUgOs1SGJk4=;
	b=RJV0IJHD7bhSZRwBHxk/GBsxPTI5QqYFnOM4C5XFqHqGzX+0WOPg5fer1SRbJzwT2i0epp
	HRxe9On48LhTIx4FLlTRanZEEQVCwryupurWr9s+TQfKFAQ4PELiPPCz2T/LHcsEOq9SLa
	AcDOSOxM2xBoYEAYRfyyPS17iA7nHyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-446-jm68EuGTODagO3JN7u0_7w-1; Fri, 25 Feb 2022 14:19:15 -0500
X-MC-Unique: jm68EuGTODagO3JN7u0_7w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4675F824FAA;
	Fri, 25 Feb 2022 19:19:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E6C271081319;
	Fri, 25 Feb 2022 19:19:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C40704A701;
	Fri, 25 Feb 2022 19:19:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PJIEup008874 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 14:18:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 50BB72166B13; Fri, 25 Feb 2022 19:18:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C92C2166B18
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:18:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5497B811E76
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:18:06 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-344-MV9I5hiMO0u2GKE-Qt_I1A-1; Fri, 25 Feb 2022 14:18:03 -0500
X-MC-Unique: MV9I5hiMO0u2GKE-Qt_I1A-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 99AF11BB0B3
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:18:01 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id zcTtZtqsUX5u for <blinux-list@redhat.com>;
	Fri, 25 Feb 2022 19:18:00 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 94B721BB092
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 19:18:00 +0000 (UTC)
Message-ID: <5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
Date: Fri, 25 Feb 2022 14:17:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Voice assistant on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
In-Reply-To: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

We have Mycroft

https://mycroft.ai/

among others. Mycroft is installable through snap if you have access to 
it, but you can also clone its git repository and install it that way, 
which seems to work better.

https://github.com/MycroftAI/mycroft-core

Unfortunately I'm not aware of any distro package for it. Mycroft isn't 
bad, though it does tend to be too sensitive, hearing its name when 
you're not talking to it, or when your screen reader is speaking. There 
are others as I said, but I can't comment on them, as I haven't tried 
them ... yet.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

