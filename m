Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B2351678D
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 21:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651434277;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k018fw3Vwv4I97q1ntAWlARrNYJUVMBR2Uqf29euOSQ=;
	b=iEWFnhPNM56meZKTPMR5XmQ8hirKBHsofwXxTPhN3PpBNNtw66MYJhAl4yXjmi1irW30im
	bokCWe1Rl8ejb09U3XB3mHh8mismNaLC11UHVn9p3TcDpHfaGRCWeA0UibhQhaL7Qpm+Cq
	9TZgGuJZ4vxgHa1ZQlEsQANqtjBgks4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110-fjtcPD8tMUev155NlImNmg-1; Sun, 01 May 2022 15:44:33 -0400
X-MC-Unique: fjtcPD8tMUev155NlImNmg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A033101AA42;
	Sun,  1 May 2022 19:44:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 75DBE469A58;
	Sun,  1 May 2022 19:44:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C36EC1947063;
	Sun,  1 May 2022 19:44:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
In-Reply-To: <mailman.12167.1651432285.111205.blinux-list@redhat.com>
Date: Sun, 1 May 2022 12:44:20 -0700
References: <DF6D9E19-7E4B-4B5F-ABE2-B691251F97D7.ref@yahoo.com>
 <mailman.12167.1651432285.111205.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.12284.1651434266.111201.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On May 1, 2022, at 12:11,Ashley Breger wrote:
> 
> ... I am looking for an accessible SQL program to use on my Slint system. ...

tl;dr - no real answers, but some questions and ideas...

I'm assuming that you're referring to SQL, a language for interacting with relational databases (https://en.wikipedia.org/wiki/SQL).  If not, please indicate what else you have in mind.

There are lots of databases that support SQL, though the features and syntactic details can vary a lot.  However, most of them have a command-line interface which you can use to submit SQL queries, etc.  So, they should be pretty blind-accessible, at least on the input side.

Output is another question.  Because relational databases operate on rectangular tables, they tend to use text-based formatting to delineate rows and columns.  So, for example, you might get long strings of spaces and vertical bars such as this:

|   foo |   bar |   baz |
|   123 |   456 |   789 |
|  1234 |  4567 |  7890 |

Unless you have a screen reader that can let you navigate this sort of thing, finding the relevant table cells could be pretty tedious.

Of course, with a sufficiently clever query, you can (sometimes :-) pare down the output to just a few cells.  I do something like this when writing debugging trace code, to avoid having to dig through large piles of output.

One thought I have had, from time to time, is that it would be nice to have tooling that transforms various tabular output formats into HTML tables.  This could let the user employ screen reader navigation to crawl around the table.  However, I have no idea if anything of this sort exists.

Assuming that there are some blind-accessible spreadsheet programs, you might be able to dump the tabular output into a file (e.g. CSV) and then examine it using the spreadsheet program.  Might this work for you?

- Rich Morin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

