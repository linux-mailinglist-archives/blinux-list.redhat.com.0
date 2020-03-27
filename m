Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id BAE7A195E9C
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 20:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585337247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qyBbV7XPAOPMGTCQaHlkCzyK/XLRM973K/SzIMG/7pM=;
	b=Py1xlRUwouHgcmVMtWYCm5xvJkSWZGHvhET4lYNdb8uq3qv+4BOhLYlFtSL7bV14eXsX9u
	BFu0wUttysi4ClrwfGv9HnUNgp+5cX4hja135zF6VJTnEP8o8NmLadfo0/YXVxekpPWnxU
	vMl9ZMRwskQmdvSwnDauPeq+lYS5yVI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-kfaY6ibKPb2Nmv3iv4r18w-1; Fri, 27 Mar 2020 15:27:24 -0400
X-MC-Unique: kfaY6ibKPb2Nmv3iv4r18w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51ACC18C43C2;
	Fri, 27 Mar 2020 19:27:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65BBD19C7F;
	Fri, 27 Mar 2020 19:27:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A19BD8A04C;
	Fri, 27 Mar 2020 19:27:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RJRBjf018721 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 15:27:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E28C32033955; Fri, 27 Mar 2020 19:27:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE9232033957
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 19:27:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5813101A55D
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 19:27:08 +0000 (UTC)
Received: from gateway7.unifiedlayer.com (gateway7.unifiedlayer.com
	[74.220.194.128]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-18-NotgrR5bOvaN7FLj9G04cA-1; Fri, 27 Mar 2020 15:27:05 -0400
X-MC-Unique: NotgrR5bOvaN7FLj9G04cA-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway7.unifiedlayer.com (Postfix) with ESMTP id 67D6020115993
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 14:27:04 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id HudEjD3bhwLnQHudEjninY; Fri, 27 Mar 2020 14:27:04 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:47639 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1jHudE-000pdS-25
	for blinux-list@redhat.com; Fri, 27 Mar 2020 14:27:04 -0500
Date: Fri, 27 Mar 2020 14:27:02 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs when
	there's no blank lines.
Message-ID: <20200327142702.35209f95@bigbox.attlocal.net>
In-Reply-To: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1jHudE-000pdS-25
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:47639
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On March 27, 2020, Linux for blind general discussion wrote:
> does anyone know a way to automate inserting blank lines before
> and after each line in a file that's too long to fit on the screen
> all at once and then hard wrap those long lines?

Well, since adding a blank line after each line-break puts a blank
line before the next line, you (should?) only need to add newlines
after each line which can easily be done with sed:

  $ sed G input_file.txt > output_file_with_spaces.txt

If you want to format the lines at the same time, you can do that
with "fmt"

  $ sed G input.txt | fmt > formatted_output_with_spaces.txt

By default, fmt formats to 72 characters wide but you can adjust that
using

  fmt -80

Hope this helps,

-tim



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

