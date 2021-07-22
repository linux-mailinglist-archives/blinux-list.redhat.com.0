Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0AAAA3D25E0
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 16:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626964635;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aaMV+8t8f9ZvwYiePSgT6UHnJjDlWMSYDzna+G6RVoI=;
	b=CGX/eDylgPVLV35ElD4xQ2IVj+EizmkCoK8FuNPE4K7qavmdi7Nomf8wOv4SEGji3+OnSv
	vv5m/JP1JiE6+Ii410NvbqI4xSIOE3TyACPK9HGTU9hheuif4NjBub0WzLeWYOlgoYtOf1
	twHOg9e0ppLDCXUfyTnJVc+/xcoVBu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-HQpad9QVPhCwCe_esgAB0Q-1; Thu, 22 Jul 2021 10:37:13 -0400
X-MC-Unique: HQpad9QVPhCwCe_esgAB0Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00D4E804142;
	Thu, 22 Jul 2021 14:37:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FF206A056;
	Thu, 22 Jul 2021 14:37:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 358AE4BB7C;
	Thu, 22 Jul 2021 14:37:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MEb2o8013728 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 10:37:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 67CF22095BB6; Thu, 22 Jul 2021 14:37:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FD0720962CE
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:36:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C0D980120D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:36:59 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-124-wvCSJ8nYNw-AX4W6otU8Ng-1; Thu, 22 Jul 2021 10:36:57 -0400
X-MC-Unique: wvCSJ8nYNw-AX4W6otU8Ng-1
Received: by mail-wr1-f52.google.com with SMTP id m2so6216772wrq.2
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 07:36:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=7blIE153vd7MRbRn2vfL114oD7OakyMkkFVTrXNdDYM=;
	b=kHH5CTO3KaaZm+lXcAb21j4Bs5HisqA30NoO/AU110SRh7VmL5xvAlXtwo/C1fjIAW
	WM/Sp6zIAtJtH3wOvVYIVa92lAKmbH/BRT5+/2BlmDkZ+aBb2wpWrpJZnHQJNi7l2Xy8
	04e3vPI/YwUqGp8HWXGAeq8/vPyeXnsrL8gXH38qxxfYRFKGknOcSTCTW3rhRfVhjYjc
	kCQgDANF8mOXvev4DDfud0bwmmZT8yHwDqYUIqZ8THubGZ5Topn6mE6gkBZB2ZGNDfjO
	wpGM2FkqsQpst8k+n8GTHjLfIYTlfC3oA8o85it2cBlhOiYySNlkk84ZdD9EvU2yjjRy
	/VnA==
X-Gm-Message-State: AOAM531TT6hVEsLlXnrXqcEt0iKHuQ9iuwVuOsoZ33L3codx09gtRraa
	AX4Eky5rIA8NJyetcWHwhijj7bhByVU/2w==
X-Google-Smtp-Source: ABdhPJz4DdpIZMUAm/RqjpPy1rjymLUuA0Q7qUntf3tK56qN0MV7TC1ljsO982yE00FAqyhw1E+NOA==
X-Received: by 2002:a5d:63ca:: with SMTP id c10mr241394wrw.163.1626964615997; 
	Thu, 22 Jul 2021 07:36:55 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	b12sm30537298wro.1.2021.07.22.07.36.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Jul 2021 07:36:55 -0700 (PDT)
Date: Thu, 22 Jul 2021 17:36:54 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about running emacspeak on Arch
Message-ID: <20210722143654.crp5mifqrz4ykcav@alex-pc>
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
	<20210722134626.jueyx7z7q7a4oska@alex-pc>
	<CAGJxbF4QX3hwV5-BAgfLb-=_dDw5+wFnCxemP8CKvkqdfjdk5Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGJxbF4QX3hwV5-BAgfLb-=_dDw5+wFnCxemP8CKvkqdfjdk5Q@mail.gmail.com>
User-Agent: NeoMutt/20210205
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 22, 2021 at 09:15:14AM -0500, Linux for blind general discussion wrote:
> How do you exclude Emacspeak from being controlled by Pipewire?

I think it isn't possible.

> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

