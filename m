Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3062144F4DE
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 20:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636831529;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=H5RTHBMd+6RB2SE3p/+q+lLKu8/GaYpWZ4xZg55zbKo=;
	b=hn0J7VtXEBFX+X/41pEuLDg0NFDRy/9GRYgq4FZgHpQWyTyMG5h5K2QHezhVlSurNq02uH
	Zbu22If6XwOCct3kbOmtPFrjltJgcI6Rno/F68U70RtYGUknRdL8Nsfgx1ZaHp8Pgyy6Yb
	8ljQgysBwU39SAGWotTkhy2RCTpnfeE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-H9A9EOEnNqueZ0kcbzlLUQ-1; Sat, 13 Nov 2021 14:25:25 -0500
X-MC-Unique: H9A9EOEnNqueZ0kcbzlLUQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50C9C180830B;
	Sat, 13 Nov 2021 19:25:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B777560C82;
	Sat, 13 Nov 2021 19:25:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A6DD181A1D0;
	Sat, 13 Nov 2021 19:25:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADJPB75017473 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 14:25:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 74465404727E; Sat, 13 Nov 2021 19:25:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A5E0404727D
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 19:25:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FB40801E6E
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 19:25:11 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
	[209.85.222.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-253-4gOf8U0fMlGY5LCIAeq8Hg-1; Sat, 13 Nov 2021 14:25:09 -0500
X-MC-Unique: 4gOf8U0fMlGY5LCIAeq8Hg-1
Received: by mail-ua1-f45.google.com with SMTP id n6so9407923uak.1
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 11:25:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:in-reply-to:references:mime-version:date
	:message-id:subject:to;
	bh=mVOUVrh5vQcAy/yYlaYaZKSozYEWa36lE2bZhKYJ6J0=;
	b=L+vGqXwIWRDrKMbaVX3tfDuy8d1jEbyKUI95pxqMDSH/UkKqZR82hTZQZnrQ+AFbhn
	lOcz4VOWXvXh+L+k68EKAMgtkXUlQoA+vTCiF9EOlHdN3WtxQAGahMn6rbtdEddPA1Oy
	kd0O2VQ2qfksHfNi6pHzR153UGllpashtnoUeXrrvNu8mAFuHbIfN3OOuuxePQ7VBy0D
	od99OsweHIdVVRhQLP8y/InlIBfUnd2o8H9eu4Aeq4CiLnft42kqORuvjY9mgvgoKC6x
	LMjWCXzusXPDUzfRYVDDv+CfvvnluOuX0o7cmJOHlPec2z7FExpK2oYh/SMrHK4eqTBL
	4uyA==
X-Gm-Message-State: AOAM530ClB3miCvfB+0E9z8cvTg4QlP40MdVx7kWqCMfS6LHoHkv2MhX
	nxwab8fWl4yh0BNz28XwTARc6WQ1GXkiV1oScMFUqOYl0hs=
X-Google-Smtp-Source: ABdhPJxp4wQmcbos/bBTrE5iSBt/QvqbkEYcQ3lR02cMeyO91tnIVQMHghEadJcP0o/cXPGnL+nFtcwml/uH9xRgBOo=
X-Received: by 2002:a67:e40d:: with SMTP id d13mr24232424vsf.11.1636831508375; 
	Sat, 13 Nov 2021 11:25:08 -0800 (PST)
Received: from 533632962939 named unknown by gmailapi.google.com with
	HTTPREST; Sat, 13 Nov 2021 11:25:07 -0800
In-Reply-To: <8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
MIME-Version: 1.0
Date: Sat, 13 Nov 2021 11:25:07 -0800
Message-ID: <CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I agree.  If you are going to use a terminal client, Alpine works pretty
good.  At least it did when I used it a long time ago.  If I recall
correctly, with Mutt you need to create a configure file by hand before you
can do anything with it.  At least pine creates a default file and if you
want to change it, you can go into the menu to do that.



On Nov 13, 2021 at 1:59 PM, Linux for blind general discussion <
blinux-list@redhat.com> wrote:

The Mutt email client should come with a warning label:


CAUTION: FOR EXTREME POWER USERS ONLY!


I'm sure if you like emacspeak, you'll probably love Mutt, as I gave up
on EMACS as a whole after 5 minutes and gave up on Mutt after about 2
weeks. But someone who is using Thunderbird as the thread starter has
said should steer clear of Mutt and avoid it like the untamed, mangy,
flea-bitten dog that it is.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

