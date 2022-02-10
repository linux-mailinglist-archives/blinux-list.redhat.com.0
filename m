Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8EA4B0E4A
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 14:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644499179;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1I9hIoy/BHbl1CrIAKqR+k8GmZwqdCK6R77FhCkeWjg=;
	b=W/aFu+AGgdDw0jw7KjOmA4I3fU1jxgTa0nGxjwbGtKmWYMcj02UGCaFcRxeECbpzXUDRFk
	VKQoeEQzfcoU8I/GRaQiey+1qGH0jpgEHdHM63rtn6P1rASqGIkZn4iZ+y8NE9ZFuLgJP2
	gTMjVCu8S0f0ZemMVvPSnGJo1hMJ4f4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-342-xLNrxhAUNl-wpw24DKU9JQ-1; Thu, 10 Feb 2022 08:19:36 -0500
X-MC-Unique: xLNrxhAUNl-wpw24DKU9JQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C5C01091DA1;
	Thu, 10 Feb 2022 13:19:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C071752DC;
	Thu, 10 Feb 2022 13:19:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA9A618095C9;
	Thu, 10 Feb 2022 13:19:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21ADJO4d031576 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 08:19:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2750F401E7F; Thu, 10 Feb 2022 13:19:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2413E401474
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 13:19:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FB91811E84
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 13:19:24 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-440-UIejc6OKNgmviP7EfJOgcw-1; Thu, 10 Feb 2022 08:19:22 -0500
X-MC-Unique: UIejc6OKNgmviP7EfJOgcw-1
X-IronPort-AV: E=Sophos;i="5.88,358,1635199200"; d="scan'208";a="20704300"
Received: from nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr (HELO begin)
	([194.199.1.52]) by mail2-relais-roc.national.inria.fr with
	ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2022 14:19:20 +0100
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1nI9M0-0023ih-0c;
	Thu, 10 Feb 2022 14:19:20 +0100
Date: Thu, 10 Feb 2022 14:19:19 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>,
	slint@freelists.org, debian-accessibility@lists.debian.org,
	orca-list <orca-list@gnome.org>
Subject: Re: Jos Lemmens passed away on November 9, 2021
Message-ID: <20220210131919.yhhfdanceg6egv3m@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>, 
	slint@freelists.org, debian-accessibility@lists.debian.org, 
	orca-list <orca-list@gnome.org>
References: <bafa422c-eba4-223a-0d2f-f632f5bd6445@slint.fr>
MIME-Version: 1.0
In-Reply-To: <bafa422c-eba4-223a-0d2f-f632f5bd6445@slint.fr>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

> Los was the developer of eBook-speaker and daisy-player.

For information, we have set up

https://github.com/book-readers/daisy-player
https://github.com/book-readers/ebook-speaker

to continue the development of ebook-speaker and daisy-player.
Contributions welcome!

Samuel
(unfortunately github doesn't list developers who don't have a github
account, so Jos doesn't appear as contributor of the whole thing :/ )

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

