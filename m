Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4D95865D
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jun 2019 17:53:45 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 29B9F2F8BE2;
	Thu, 27 Jun 2019 15:53:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09DA360C62;
	Thu, 27 Jun 2019 15:53:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A60D7206D3;
	Thu, 27 Jun 2019 15:53:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5RFrbBb000522 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jun 2019 11:53:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8FBA960126; Thu, 27 Jun 2019 15:53:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A952600CC
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 15:53:35 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3F3B083F3C
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 15:53:23 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id t76so1949037oih.4
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 08:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=dvnFnJ2rgVil8GpTucgeVN5N3IrOWuKflxpCkokesds=;
	b=BSvSQQWNT3PvcXByTQjUpd8u+QGkcxje+f6Zyg/pjTsEC6pZaYdUvcUOWemafm6HIM
	e9qIxUCgLGS/qOlYGHnmxo8Iv2Wr6ZDO+Vq1TO2VqrVsMtoIvaW19B1WBnG5nZofuPaD
	iHa/8j1HbWnfkvb2yDYOE2l8ciT8cqihRWPANMGAucI8XGz3mbYzkk0JhMFIxSlPIb+v
	/ZEcF4Itw67sheFQ5HEA5AdBLrYAlErCLSl7cIk7AAfcFMO+V41rvupU8e7xRtP/qKrp
	uA3Tt1B8Q6Af66Vfqk4QR/3v4DdI5kTxbjehaEo41fd/O6dVjK9rg2V+rCWAVhnpOoYb
	S+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dvnFnJ2rgVil8GpTucgeVN5N3IrOWuKflxpCkokesds=;
	b=XzO8n/XV4XfovbDPkpudnxZsuazb8lhD4uPBBlw4nsRabyjDIdxmqlptJaM+Wvl5LW
	R4i8gep0ap2I+BTIbdFb5cRmOusCSVphLki61Po2B5s4Dw/Al9py8SzcZQbloIKb4kez
	GP9V4BOjbByVSkqO49HueQQg9ouuRS9JtSbFFowS7LKpzFAdsodcmpQdouLkWgOFLuxv
	fwduUPs4Ano0HSkr6zgg0ZXOehl03x//vQF/9Tc3R4LykaHR5jXfOlMKbT1bO+J7daJL
	20+Ae6BHsPSYxRJ3htp9yDUNFyMYapijHUL8blKnsgUq+S4JHsrxjBXbkCA06tdLwjf2
	O7wg==
X-Gm-Message-State: APjAAAXliO4//HiAa3R/BdM/YuuMcv80utHNHPGGCuDiE72cyc5M24yf
	MXgZooB6z6hT5sME8laPeaMjBl6EL+sp0jYocBX+lg==
X-Google-Smtp-Source: APXvYqxyGfOsTMbLqhnJhmp9lWUU+Ug4A66HkIXYRzwZKTOycIVYKzc+l7zjDG6ish3GnqRXHVxiZVD8cjx5mOymm5M=
X-Received: by 2002:aca:30cc:: with SMTP id w195mr2522749oiw.42.1561650802531; 
	Thu, 27 Jun 2019 08:53:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:6ac9:0:0:0:0:0 with HTTP; Thu, 27 Jun 2019 08:53:22
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.21.1906271110410.22430@panix1.panix.com>
References: <alpine.NEB.2.21.1906271110410.22430@panix1.panix.com>
Date: Thu, 27 Jun 2019 15:53:22 +0000
Message-ID: <CAO2sX31x2=fK7_HtdOc-dXtTt2chZ8P8FUaQ30HHA872UXH87A@mail.gmail.com>
Subject: Re: climagic
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.27]);
	Thu, 27 Jun 2019 15:53:23 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Thu, 27 Jun 2019 15:53:23 +0000 (UTC) for IP:'209.85.167.176'
	DOMAIN:'mail-oi1-f176.google.com'
	HELO:'mail-oi1-f176.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.176 mail-oi1-f176.google.com 209.85.167.176
	mail-oi1-f176.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Thu, 27 Jun 2019 15:53:44 +0000 (UTC)

Okay, sounds like this might be why I can't get the beep command to
sound, but when I try running

sudo modprobe pcspkr

I get a module not found error.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
