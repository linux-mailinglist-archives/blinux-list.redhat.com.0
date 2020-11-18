Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D58522B7FC1
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 15:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605710818;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nHTaJUokgTt0Y5o+xOkruqe9NGw2BQhyk2XC4/HClZY=;
	b=V2LRGCz35g5MGpYtHpiHRjp9rmO7/2Wyrl5LtuGHinXjNVybGNgE8ER/GsA+NGK9CQZ6Ek
	7P5SAgzW43EEmd18kzUtg562YIYiTT0HQ9VQxoHB7w3fvznmdHj5w8SWfVw81OJGSAAzmp
	AAxrLMoUIzOjgoMiLBr3DxekhBIW7OE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-RqxcN3nDNI6r57zIds_-7A-1; Wed, 18 Nov 2020 09:46:56 -0500
X-MC-Unique: RqxcN3nDNI6r57zIds_-7A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A2E718B6126;
	Wed, 18 Nov 2020 14:46:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F7225D6A8;
	Wed, 18 Nov 2020 14:46:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E870318095C7;
	Wed, 18 Nov 2020 14:46:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIEjxU7015805 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 09:46:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C6EA62166B44; Wed, 18 Nov 2020 14:45:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BECC52166BA3
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 14:45:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 078CC811E91
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 14:45:57 +0000 (UTC)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com
	[209.85.166.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-511-JwQ9ObCAOuiMe_9vNiI2Ng-1; Wed, 18 Nov 2020 09:45:54 -0500
X-MC-Unique: JwQ9ObCAOuiMe_9vNiI2Ng-1
Received: by mail-il1-f170.google.com with SMTP id z14so452979ilm.10
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 06:45:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=G09ngKTRt1EBeI4dEK7vKjZY+jpMcfOPvOKQLAT1yL4=;
	b=uGGDazfAOA3KDsD4Ss4pO4k79/kTHZuX7DYIXIyTLF+tBk/QIEk3Du4YDaz9iQGFY4
	oejnNbY6wwlQ/CGif0v6RbgtYX70kAWrfQz3G246uAP+sawae3FB0aolYDsrR0kvIALz
	w12bbF3QRolYCMDCs0bt/8zfVxib3lq46U/IAQp+7UpinYnDRq9xTlS9bHFdzJYi8P+G
	sD3pOJMy3niJ397XBpkqpogGKHwycEe+Zk5wkHo8S532mTsB7YESf2o7wuvHD4j+YEYs
	iuMt3f9hTFNa4Lxm7p9gHLrhs0bsmBrqjLrBs7wrJWHn+e9K+u80dzCaHuWFtDDmSd+l
	boLg==
X-Gm-Message-State: AOAM5325Y5DlwgGe53AX76fhPBAOAwleny3JrGclLijFpYhoaF+AJl4S
	RWDGKq6rQjyE2I3uQ5TNe6ll/ctZ9n3nAGO1IXUek+Ba9Gg=
X-Google-Smtp-Source: ABdhPJxR1PehumNc/UC+Uh8Vd42+zbUHBUDu/2EZbnlQocBi3rzrqv0rhFuLFUP9IezBH08a0a6V/+eJ+G1DOJEpXQ8=
X-Received: by 2002:a92:d203:: with SMTP id y3mr4293275ily.206.1605710752791; 
	Wed, 18 Nov 2020 06:45:52 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
In-Reply-To: <CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
Date: Wed, 18 Nov 2020 08:45:39 -0600
Message-ID: <CAGJxbF60i13tKz-Wf_X+LEq5hg4xPKDT0z971A88cG9pVS=ojQ@mail.gmail.com>
Subject: Re: as I suspected
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I mean, he's definitely not around on the linux-a11y IRC. He's also not
keeping the VM of Jenux updated, as far as I can tell. But I'd rather have
a friend help me install Arch than potentially brick my PC with this.
Devin Prater
r.d.t.prater@gmail.com


On Tue, Nov 17, 2020 at 6:36 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Daniel Nash, the maintainer of Jenux, is a good friend of mine and he
> always seems to make sure that things stay updated. His dedication to the
> Linux operating system and to his user base has not been equaled in the
> space of visually impaired Linux distributions, at least in my opinion.
>
> On Tue, Nov 17, 2020, 11:48 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > A new iso was released.
> > https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
> > for Jenux.
> >
> >
> > --
> > United States has 633 Billionaires with only 10 doing any annual
> > significant giving.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

