Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1B20628243C
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 15:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601730806;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5U4b3ZFrdG8LHNPIe9EkXVNt5Qi35cbgBjq+D4IgDlI=;
	b=NXRTU1mdE4v4O6Le/OawF0KvkdBQGimKA71NBI/LCCtiE7XNXwXCx3GOYdKXLb7i/rAwcA
	YNgME8Ow4xy33F9/k8HVWfwBBr84puAjpibDZnwZtYfEdLUkIvnqEUWW2HSPNb5IXI2Mnj
	Vvi/6nB/deXhYO4avyASOnsQYN3kloE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-t4jKYt_CMii2geS6EL742w-1; Sat, 03 Oct 2020 09:13:23 -0400
X-MC-Unique: t4jKYt_CMii2geS6EL742w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46B9B1074641;
	Sat,  3 Oct 2020 13:13:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 925ED702E7;
	Sat,  3 Oct 2020 13:13:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C0FB44A4C;
	Sat,  3 Oct 2020 13:13:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 093D8L7K018865 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Oct 2020 09:08:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0EBEF1004C4D; Sat,  3 Oct 2020 13:08:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0981210AF42E
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:08:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0565B101A53F
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 13:08:19 +0000 (UTC)
Received: from rednote.net (opera.rednote.net [66.228.34.147]) (Using TLS)
	by relay.mimecast.com with ESMTP id us-mta-169-CpEd6x8RORqSSfwqM9D8Rw-1;
	Sat, 03 Oct 2020 09:08:16 -0400
X-MC-Unique: CpEd6x8RORqSSfwqM9D8Rw-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by rednote.net (8.15.2/8.15.2) with ESMTPS id 093D4Uco204919
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sat, 3 Oct 2020 13:04:31 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 rednote.net 093D4Uco204919
DKIM-Filter: OpenDKIM Filter v2.11.0 rednote.net 093D4Uco204919
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 093D4UEt204918
	for blinux-list@redhat.com; Sat, 3 Oct 2020 09:04:30 -0400
Date: Sat, 3 Oct 2020 09:04:30 -0400
To: blinux-list@redhat.com
Subject: Re: Console screenreaders
Message-ID: <20201003130430.GA2173@rednote.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
MIME-Version: 1.0
In-Reply-To: <87tuvf2km3.fsf@cmbmachine.messageid.invalid>
X-Operating-System: Linux opera.rednote.net 5.8.11-100.fc31.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion writes:
> Linux for blind general discussion <blinux-list@redhat.com> writes:
>...
> ... you aren't limited to the 25 rows
> and 80 columns of a standard screen

One need never be limited that way in the console. The stty command is
your friend here.

My current setting (on boot) gives me 75 by 225, but even larger is
possible.

PS: Don't expect your sighted assistant to be able to read these larger
counts. I have a command in my /usr/local/bin to set 25 by 80 when I
need to show something to a sighted person.

Janina

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

