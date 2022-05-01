Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F397D5167AE
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 22:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651436471;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iSi9myHtJ+lfowmPKXf5S9x81DhGBtl0bl5PtN8IVYc=;
	b=WwwbjVjCv8LL86Pco5TpW0p9ZnHuAM5Phw5Mt2vmckWwrW/UXAC5F0I3CNuscSwtOd4RsC
	KHdgW1ZdtJAmb1TZG/r1xTHHiUy4nfIHvPnZHJYNcpl38vmtp/CrR/9E3n3Qzgf9ZiGD6+
	nIMUio8lcb8agTp2wFnxKBwyNxJ/vEA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-302-MkafSQSqOqemEPdY_-6JUA-1; Sun, 01 May 2022 16:21:07 -0400
X-MC-Unique: MkafSQSqOqemEPdY_-6JUA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 31AEC8002BF;
	Sun,  1 May 2022 20:21:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8128F2026987;
	Sun,  1 May 2022 20:21:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BBD5C1947063;
	Sun,  1 May 2022 20:21:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 1 May 2022 14:59:17 -0500
To: blinux-list@redhat.com
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
In-Reply-To: <mailman.12167.1651432285.111205.blinux-list@redhat.com>
References: <DF6D9E19-7E4B-4B5F-ABE2-B691251F97D7.ref@yahoo.com>
 <mailman.12167.1651432285.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.12062.1651436463.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Depends on the degree of accessibility, which database
engine, and whether you're looking for a CLI, TUI, GUI, or web
interface.

All the major players (MySQL/MariaDB, PostgreSQL, and sqlite) have
command-line clients ("mysql", "psql", and "sqlite3" respectively).
Some of them have special directives to edit the current query in
your $EDITOR (such as suffixing queries with "\e" in psql) while they
should all allow you to read in an external file (such as psql's "\i
filename.sql" or sqlite's ".read filename.sql").

Most also allow you to change the output format.  Depending on the
volume of data I expect, I prefer either column-aligned output (often
the default) or line-oriented (like sqlite's `.mode line`) where each
column is on its own line, prefixed with the column-name, and each
record is separated by a blank line.

For my own use, I tend to author queries primarily in my editor, save
it, and then flip over to the CLI client and source that query to
produce the results, usually all with a tmux session (though you
could just as easily use GNU screen if that's your preference).  This
also has the advantage that the query is stored on the disk and can
thus be version-controlled with your favorite (git, svn, rcs, fossil,
whatever).

I haven't found (though haven't looked for) any sort of SQL-specific
TUI or back-end-agnostic CLI client, and I've seen some web-client
interfaces that might also be accessible, but the standard CLI tools
are readily available, accessible, and well-documented, so I tend to
stick to them.

-Tim


On May  1, 2022, Linux for blind general discussion wrote:
> Hi guys,
> Subject pretty much says it all. I am looking for an accessible SQL
> program to use on my Slint system. Does anyone know of any options
> I might have? Thanks,
> 
> Ashley Breger
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

