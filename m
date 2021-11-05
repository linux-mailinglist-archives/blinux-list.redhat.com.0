Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2FA446AC8
	for <lists+blinux-list@lfdr.de>; Fri,  5 Nov 2021 23:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636150092;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IszdKjfhCrXVPlssU/6NvZqyBgWvNSBtMBiyL6FAs4M=;
	b=JbNotBJHGaverpXiNglDnlOcjaB+mVeuE78lJzN1cwNPbnjU8qL2lS/3EXnn1YZGBJ4wqE
	+q+VH1LuIfILeYZ5swaB+VzHqXhrN3GxbwV/1EAHU5njJ8BNvVyfeplPqT2TcdmGw/0ylU
	mTufoB1YjzKxua2frSHRE1fv4yRkrqM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-1lhMsHcFO7a1QTxp8akAWw-1; Fri, 05 Nov 2021 18:08:09 -0400
X-MC-Unique: 1lhMsHcFO7a1QTxp8akAWw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4EFBB10144E1;
	Fri,  5 Nov 2021 22:08:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2247DB2A6E;
	Fri,  5 Nov 2021 22:08:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 18C1E1806D04;
	Fri,  5 Nov 2021 22:07:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A5M7hg1029933 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Nov 2021 18:07:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 872C94035783; Fri,  5 Nov 2021 22:07:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8357F4035780
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 22:07:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B5558007B1
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 22:07:43 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
	[209.85.216.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-288-cVQI6CcONfycD1-j-Cn5_Q-1; Fri, 05 Nov 2021 18:07:41 -0400
X-MC-Unique: cVQI6CcONfycD1-j-Cn5_Q-1
Received: by mail-pj1-f54.google.com with SMTP id
	gx15-20020a17090b124f00b001a695f3734aso4310306pjb.0
	for <blinux-list@redhat.com>; Fri, 05 Nov 2021 15:07:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=3FGxoJT9iNLkhYvMNQATZqiwaHO3KTlTSpTNjMYfmwc=;
	b=sqRiVxqXiwkV5wPx7n6vzTORSxbti2+0NEsuHSBmf4aK8Z1BlkN84bJENMSBhOS4cM
	Oe3UNK5Uetg3XfIjPBCMZ9OdxcMpyxFYNuz4ZhJX4a1ER86P8/OIdf5cEd0F9SBcFFfU
	Bd1uWFRSbJ5VRdF2Iuv6E60QYO0MxH+lxa3oyrvdpAYbEFczPt4yvLiWdwTnfdupY/fZ
	9OZ1k/rt4vdLSWlyC4D7UTTdGOGGgOH8xkXdpJDtCbFU52G0LyBW+sYz50CnZYNZPeiW
	2Yt6QhTkbXeHXe9KHHRbEpFdJddWSlkbQ0z4NR0xrrIfN4NHabmfqTgGXUjQTPVIRcSC
	hYvw==
X-Gm-Message-State: AOAM531hC77SnmIHILvVyv9x0lBZbnSr2FCcu21sES+i/lnSCZRKN8nj
	R+zgNbGnFKCr+1lHwo8k2S6+p8zE9hvI+w==
X-Google-Smtp-Source: ABdhPJyQGhWvuhRXv1Kp67/ijtq8EWiB2SW5ZfcKw8MnmfYB2AEnNRO94x83eeMhi3zCoZN8LPokaQ==
X-Received: by 2002:a17:902:e302:b0:141:af98:b5ea with SMTP id
	q2-20020a170902e30200b00141af98b5eamr46965728plc.53.1636150060614;
	Fri, 05 Nov 2021 15:07:40 -0700 (PDT)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	ml24sm6987404pjb.16.2021.11.05.15.07.39
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Nov 2021 15:07:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: anonymous postings
In-Reply-To: <20211104074222.44ad2c12@bigbox.attlocal.net>
Date: Fri, 5 Nov 2021 15:07:37 -0700
Message-Id: <BE4511BD-CC0D-4215-A136-31FFDA52AE99@cfcl.com>
References: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
	<CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
	<fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
	<99C93103-154A-4522-A690-81731398338A@cfcl.com>
	<20211104074222.44ad2c12@bigbox.attlocal.net>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A5M7hg1029933
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Nov 4, 2021, at 05:42, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Tim here.  You're not the only one frustrated by the anonymous postings.

My take is that it's mostly a technological problem.  Most of the folks posting aren't really trying to be anonymous; they just forget to sign their messages because in most lists this isn't necessary.  So, I've done a bit of digging for a solution; early details follow...

This list is running on Mailman 2.1.12, which is rather ancient (the current 2.1.x release is 2.1.35).  Complicating matters somewhat, Mailman 2.1.x runs on Python 2, which is going away.  Consequently, most of the development effort is being spent on Mailman 3, which runs on Python 3.

At some point it would probably make sense to upgrade to a current version of Mailman.  However, this could be quite a hassle (different base language, code base, configuration file syntax, etc.)

And, in any event, neither branch of Mailman appears to provide any way to identify posters by name without revealing their email addresses.  I have posted issues on both branches; I'll report back if and when I hear anything promising.

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

