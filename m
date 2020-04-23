Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2BCC41B660E
	for <lists+blinux-list@lfdr.de>; Thu, 23 Apr 2020 23:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587676577;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+dlf3lR8P0JXnpQ44FsqlXVIobvo/+nzgtQ3SFT/D/Q=;
	b=TLAwVGxBMgDc27oWRXwTiJW6UC/bE18hpAfq+wZZYmMM+Uoj76OCyS0sKr3xagoP60yebL
	kwSGxs2jRqgoSRd58t+Ehi4np809WAkt+jwtMbnq55UvoBPaTq3o2k9snN47Xw5uK6YCJs
	DqPU07vVMgDp++KJuOEt6IiENY/xewo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-BORPl68eNu-eBBp7cdmW4Q-1; Thu, 23 Apr 2020 17:16:14 -0400
X-MC-Unique: BORPl68eNu-eBBp7cdmW4Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0C65460;
	Thu, 23 Apr 2020 21:16:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5380E5D714;
	Thu, 23 Apr 2020 21:16:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9AFA4CAA0;
	Thu, 23 Apr 2020 21:16:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03NLG2uS007452 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Apr 2020 17:16:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4BC8E2156A22; Thu, 23 Apr 2020 21:16:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4622F2157F25
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 21:16:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5489C1019CA8
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 21:16:00 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-261-IKoosX_SM-WC9Pnd1rvmSA-1; Thu, 23 Apr 2020 17:15:58 -0400
X-MC-Unique: IKoosX_SM-WC9Pnd1rvmSA-1
Received: by mail-qk1-f180.google.com with SMTP id n143so8081510qkn.8
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 14:15:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=aNJ2UrbBybS16AiqjxaWT5mW5AwJJ+wFGxb71JYKPVg=;
	b=XBCF6LPRvE+50yAkMRLcd0tUEY9No/eK84J26bquo0pRN2QJJFHPCMtNj451B5W0eV
	gqglfiQPWSBlPYRFX/5Cbd2vmIfTkT2PKj7bqX57JJyXLqfjkckegKrymjgkt84hUYW4
	XzrGT/W+wizfRUK8bCgU7jTC5Nl9sqNn2l/jlxa5Cd+c++oyMEmwW7A8K1IFtBgno1DS
	aShQ6dEEDESupDFsa1CoIDOOfH0TPGHc0RRtu62zVFcwNOsPyopmf5gb1I9VrWvRePEB
	qHwt8rzSBu2z+ZyH7RtT7hMMg9ZGmGzJfOZXIq1IVfdc5mQGWcJti+t4nS0jLoPkjsbY
	LCDQ==
X-Gm-Message-State: AGi0PuYHekAdN77W3W2/5vrbOgaoLCPQ46olyIDznGX1KjDoxTANeZ8a
	cJSFAKFS6/ixMwPPgFhLAcVVh/RG
X-Google-Smtp-Source: APiQypJpjuaEtaCB9EjB8F5KFHKcIy+CqIpQVfZD6qo4FOoZcGK1Wj8Fj9ccW2cdmNkGbP57YjGqxg==
X-Received: by 2002:a37:e310:: with SMTP id y16mr5783801qki.275.1587676497446; 
	Thu, 23 Apr 2020 14:14:57 -0700 (PDT)
Received: from [0.0.0.0] (24-220-234-87-dynamic.midco.net. [24.220.234.87])
	by smtp.gmail.com with ESMTPSA id p4sm2380326qkg.48.2020.04.23.14.14.56
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Apr 2020 14:14:57 -0700 (PDT)
Message-ID: <20200423.211449.706.12@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: unpacking git files
Date: Thu, 23 Apr 2020 16:14:49 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
References: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03NLG2uS007452
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Try
git clone http://github.com/whatever/whatever.git


----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Thu, 23 Apr 2020 17:13:42 -0400
Subject: unpacking git files

> If you download a git file how is it possible to have git unpack the file
> for you into its own directory tree?
> I failed to write my git credentials in braille and haven't used them for
> a very long time so may be able to get a git file using wget but for now I
> don't know how to unpack the file.
> 
> 
> 
> --
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

