Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 89356300D3C
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jan 2021 21:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611345749;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Kfrc7ocCu+8TWLw3/9d80Bprc3QBOSQpzp9qZOu8mow=;
	b=e/86pl8i16L8gQmyNOHdxkx98fy1WsAxAicaZMDAnGZHosuu6pU893WqRwEDrd3RzTbiUr
	nO4oVfFO0UUeRL6VQEmlsalLhb+biLX01aDCQZSx6Rs5164TenZWv4N/Gseg16qkNSOcvu
	Qf+DW8MIxJfL9Q/CrwVCiUjni3mH0jM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-ThMQZ3FDPaqA8Zj0sH1Wrw-1; Fri, 22 Jan 2021 15:02:26 -0500
X-MC-Unique: ThMQZ3FDPaqA8Zj0sH1Wrw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 055808735D2;
	Fri, 22 Jan 2021 20:02:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F9DC60BE5;
	Fri, 22 Jan 2021 20:02:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2210E4BB7B;
	Fri, 22 Jan 2021 20:02:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10MK2DVZ029232 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Jan 2021 15:02:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 83D0C2166B32; Fri, 22 Jan 2021 20:02:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F0712166B2F
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 20:02:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EAA6C858EEC
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 20:02:10 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-318-IkEO5wg0MkGVSm2BwaGawQ-1; Fri, 22 Jan 2021 15:02:08 -0500
X-MC-Unique: IkEO5wg0MkGVSm2BwaGawQ-1
Received: by mail-qk1-f181.google.com with SMTP id h22so6400658qkk.4
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 12:02:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=3SJInEZQrPmO7y/BR+FKN3QcCpDfWwqrs8RXnnCpg7Q=;
	b=COXP6dRzDDVViuGzGJdvlb4KtE6K9Wlg7GBIDFgiLUcudQx5UwgcJhUWG9zVCAvMY3
	t/yyysnR9u82EOdhF9ybvuTqoCPtBYe9Jp2uVlUWgKFQdoexK53Horn8c1M8BHv9qYCE
	l387CEw5Q6wKmMwILAAU/HKUREn+qEap4+cm++Ukhkxt1qrAtpSSBwmEK5lf0hu3G9ts
	PeB0oQTLs682yjm1HFM0SkDJduu8rb7/hRBJmdifJmVzrT60DMe+44R9W3GDHPeErMSV
	CA0kyt6Tu0b6114cIepeM01uO8oTL2GuWsV169RASYc+1gi4ZdVnbr6dvsKukvNZn2mY
	Aucg==
X-Gm-Message-State: AOAM530Qnz7MlhDPXEL2EiCvXyrmnmSNUSbd0Y9iVC9UZrhYi6OMlqVg
	xLT6lu7XDzbeMhoq79Y9gpSuqxHlZdUppsDhS40FXDbfNcA=
X-Google-Smtp-Source: ABdhPJxMP80uRECRQlTPC0Hk5+uYI25j0d1laa+8ByoHo1VYl33aPHDHUX8Niz1ZUrsb4DkzuR0rSitnVxtEqDd6sAE=
X-Received: by 2002:a37:6395:: with SMTP id x143mr6680218qkb.182.1611345728053;
	Fri, 22 Jan 2021 12:02:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:46c2:0:0:0:0:0 with HTTP; Fri, 22 Jan 2021 12:02:07
	-0800 (PST)
In-Reply-To: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
References: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
Date: Fri, 22 Jan 2021 20:02:07 +0000
Message-ID: <CAO2sX33ZW1wJge7tbP_nfuu2OOyxy9gFyVKnTGSpaT=y-qdJXg@mail.gmail.com>
Subject: Re: renaming many files
To: blinux-list@redhat.com
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

I'm not sure which package provides the command, but if you have
rename.ul on your system, then

rename.ul "[oldText]" "newText" *

will replace the first instance of [oldText] with [newText] in every
filename in the working directory.

Naturally, you can replace * with, for example, *.txt if you only want
to rename text files.

If you just want to delete a common string, just make [newText] empty
by putting two double quotes with nothign between them.

Note: single quotes work as well for delimiting [oldText] and
[newText], and if there's a dash(-) in either [oldText] or [newText],
you'll need to include double dash(--) before them to avoid the shell
trying to read the dashes as flag markers. Do note that rename.ul also
only changes the first instance, so if you're using it to, for example
replace underscores in web safe filenames with spaces, you'll need to
run the command until all instances have been changed.

There are other rename tools out there, but rename.ul is particularly
good at removing a common prefix from a bunch of related files, which
sounds like your situation.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

