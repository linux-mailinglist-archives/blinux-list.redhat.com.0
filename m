Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 73B2531DF71
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 20:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613589224;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ykDte7blks68uEBYv/Bs3XLh/UfbULa8SXvTMlqu7YE=;
	b=N0N5MvXakRNCfKHHsaiyqr9U5AbbrwMiU7SAgwIvBs2fkhftc2w16YpX9VXZouedEVpHlg
	MOh3UDZImoU/IBh+AGjQbj64EYHZyRKRT/U5YlfL+8pq+jrflMAyKFiLFL/vbZvgxvVmvL
	h9/sg+R58m35kzZHqZuGNZEqv+GV02k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-bp0wTNm9OZmyKnH8-X6gCg-1; Wed, 17 Feb 2021 14:13:42 -0500
X-MC-Unique: bp0wTNm9OZmyKnH8-X6gCg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C2EC8030CD;
	Wed, 17 Feb 2021 19:13:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D54A110013D7;
	Wed, 17 Feb 2021 19:13:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28BB618095CA;
	Wed, 17 Feb 2021 19:13:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HJC7B0019765 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 14:12:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C0DE610484C; Wed, 17 Feb 2021 19:12:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA666106A33
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 19:12:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E7AE186E120
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 19:12:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-517-IEKtg0jUOZ2RgfheeMV1vg-1; Wed, 17 Feb 2021 14:11:55 -0500
X-MC-Unique: IEKtg0jUOZ2RgfheeMV1vg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DgnWv2pJhzLvc
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 14:11:55 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DgnWv44FZzcbc; Wed, 17 Feb 2021 14:11:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DgnWv3sstzcbW
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 14:11:55 -0500 (EST)
Date: Wed, 17 Feb 2021 14:11:55 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting Ubuntu Linux in Text Mode with Speech
In-Reply-To: <87tuqad40d.fsf@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2102171410280.18345@panix1.panix.com>
References: <87tuqad40d.fsf.ref@yahoo.com> <87tuqad40d.fsf@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I don't do virtual so can't  help there.  However I think 
display-manager.service can be disabled with systemd and that should get 
you a consistent text mode login.



On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> Hi,
>
> I am running Ubuntu Linux 20.04 for the past twelve months. However, I
> am having problems when trying to set it to start in text mode with
> speech. Doing:
>
> sudo systemctl set-default multi-user.target
>
> will boot into text mode, but then there will be no speech. So My
> question is: Can we run Ubuntu in text mode with speech? For those who
> successfully booted into text mode, can you please share some tips on
> how I can configure my system to always run in text mode but with
> speech, whether it be Speakup or Fenrir? By the way, both of these are
> installed, but they are not triggered when I log in virtual console
> mode.
>
> Thanks in advance for your help,
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

