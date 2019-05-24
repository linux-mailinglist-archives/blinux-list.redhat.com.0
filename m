Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB412A1B6
	for <lists+blinux-list@lfdr.de>; Sat, 25 May 2019 01:47:55 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3213859450;
	Fri, 24 May 2019 23:47:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E244183A2;
	Fri, 24 May 2019 23:47:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9624F1806B0F;
	Fri, 24 May 2019 23:47:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4ONkc1F024898 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 24 May 2019 19:46:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 78A0F183A2; Fri, 24 May 2019 23:46:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73E3060FAD
	for <blinux-list@redhat.com>; Fri, 24 May 2019 23:46:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B101A3082B44
	for <blinux-list@redhat.com>; Fri, 24 May 2019 23:46:26 +0000 (UTC)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 459jgk1YPlz1bvH
	for <blinux-list@redhat.com>; Fri, 24 May 2019 19:46:26 -0400 (EDT)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 459jgk0PMGz1QWZ; Fri, 24 May 2019 19:46:26 -0400 (EDT)
Date: Fri, 24 May 2019 19:46:25 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: configure mutt for screen readers
Message-ID: <20190524234625.GA9147@panix.com>
References: <alpine.NEB.2.21.1905241916360.22426@panix1.panix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.NEB.2.21.1905241916360.22426@panix1.panix.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.45]); Fri, 24 May 2019 23:46:26 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Fri, 24 May 2019 23:46:26 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'salt@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <salt@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 24 May 2019 23:47:53 +0000 (UTC)

Here's my .muttrc file configured for speakup.

set autoedit=yes
set pager="$HOME/bin/mypager"
set charset="US-ASCII"
set mime_forward=ask-yes
set hidden_host=yes
set edit_headers=yes
set implicit_autoview=yes
unset mark_old
unset help
unset status_format
set save_empty=no
set index_format="%4C %s %F"
aliases go here

On Fri, May 24, 2019 at 07:18:24PM -0400, Linux for blind general discussion wrote:
> Any advice on what should be in a muttrc file for screen readers and also
> what should not be in a muttrc file for screen readers to work well with
> mutt?
> 
> 
> --
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
