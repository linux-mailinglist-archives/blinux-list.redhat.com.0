Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 1F0DC17F028
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 06:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583818407;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WMIe0JMk6H3nVHhL5Im7LiuvuZXceEy/AYVN2V8wwQQ=;
	b=KrZbeogEnIXIsDJqBJiAbynsEqs/qogypyLVhEcnWeO3Z8iUdWKXSXTYg2HTcRMQjVeUx/
	yNXw3HLcu81oIa5hz5sTSLCIo2df5c6wCntqKAvQV6uOh1ww/+Jv5sC+mnr8oDXLlm4V0q
	ZZxJVx7UaFttnSfyAO510Z737Jf+qpo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-h_NEKERPNvuHo0pIFjbr-g-1; Tue, 10 Mar 2020 01:33:24 -0400
X-MC-Unique: h_NEKERPNvuHo0pIFjbr-g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C51F800D55;
	Tue, 10 Mar 2020 05:33:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDE918D571;
	Tue, 10 Mar 2020 05:33:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EEC3218089CD;
	Tue, 10 Mar 2020 05:33:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02A5X163011288 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 01:33:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8A79D20230A9; Tue, 10 Mar 2020 05:33:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 836A6202A943
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 05:32:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D02A185A78E
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 05:32:59 +0000 (UTC)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-201-EDqxos9eOLeiwU0UrJdVCA-1; Tue, 10 Mar 2020 01:32:54 -0400
X-MC-Unique: EDqxos9eOLeiwU0UrJdVCA-1
Received: by mail-io1-f42.google.com with SMTP id d8so11554091ion.7
	for <blinux-list@redhat.com>; Mon, 09 Mar 2020 22:32:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=jdMyRQGOx5K8Zab2mEQUocALQ3TSmwpAQ+A7JeaCriI=;
	b=P2pMX+xJ5D8qfedfJ9oXgcJN/PJa352zGLjmiXHq9zxTgMgQfZ+AmAxuq1CfmjkdNf
	pK3kDrOsPwoesicH1d0yLar0gV+y29oIF5I6etklFkvFjFJlLfTKq7C/q7GIOuF8E0Zy
	NAiom1zNoF51F6ysKGd65CFYPB2OoCAVqLofqV8VUymj/BxQEtAdqBtY6+yQpk78OTZX
	B72A6h1CWevnZ+EJ+qeSJWp185iyZndejXWGMHNDCeROYKHEOEgSCoPiFpK/50HT8CSV
	oczDDG3qx1+88kGwyP48LBuJ4KFVR09dKo2ioXfpKoh9wx46aAHtva2hj6yCJfPHXS2f
	hHcA==
X-Gm-Message-State: ANhLgQ3iJL9q3PSMNNZgkmFuGp4eYrP2skVILgdhY+Q3/veJgrl8OzqI
	0CSRy+yeWhLVS1J/12kTogTEyIoQ/2RTr0Lf1VocZA==
X-Google-Smtp-Source: ADFU+vvw9s2Vj5B2zxwhRIjYUVveIuI8PCZyvx5Qmk+0Jk2ugnbL4cZvXlYj/NZGt+o74mrPC/kxgnK0EwE8s3LLmnc=
X-Received: by 2002:a05:6602:2434:: with SMTP id
	g20mr2112417iob.97.1583818374041; 
	Mon, 09 Mar 2020 22:32:54 -0700 (PDT)
MIME-Version: 1.0
References: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
	<ccc1f11e-f015-f66f-c897-e6bbf9c0afc3@crosslink.net>
In-Reply-To: <ccc1f11e-f015-f66f-c897-e6bbf9c0afc3@crosslink.net>
Date: Tue, 10 Mar 2020 07:32:42 +0200
Message-ID: <CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
Subject: Re: Accessible PDF viewer
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The best PDF experiance I know about currently is if you run Orca master
with the latest snapshot of chromium or Chrome. The builtin PDF reader of
Chromium is very nice, it places every page under a different landmark so
you can navigate between them with m and shift+m. It even support a few PDF
tags by converting them to their HTML equivalents, headings for example.

Regards,

Rynhardt

On Tue, 10 Mar 2020, 04:07 Linux for blind general discussion, <
blinux-list@redhat.com> wrote:

> Ubuntu Mate Desktop seems to have Atril Document Viewer.  If you press
> F7 to turn on caret browsing it seems to be usable with some PDF files.
> I have not used it extensively.  You can also press control-a to select
> the entire document and paste it into an Editor.
>
>
>
> On 3/9/2020 5:36 PM, Linux for blind general discussion wrote:
> > Hello,
> >
> >
> > is there any accessible pdf viewer on Linux which can be used wiht
> > Orca screen reader?
> >
> >
> > Evince seems not to belong to this category.
> >
> >
> > Thank you in advance!
> >
> > Vladyslav
> >
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

