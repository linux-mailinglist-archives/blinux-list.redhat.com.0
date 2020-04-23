Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 086541B66A1
	for <lists+blinux-list@lfdr.de>; Fri, 24 Apr 2020 00:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587679693;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=irTu9oskZ8L1hhq2nALDXLS0UDNvHOBfHITssUbb8kQ=;
	b=J6ZSN9U0wo6Z8n4+0MWAasYveK3CXKM1U3KM/XU6QfhRRDWlGMrbHAeMO8danZ9LBYtcXR
	iR8pttJ1lJX252ssM9JgX1cm/YRn902Kc0wOyEfWQAOpsuVuJCD7sRl7oAYbgvIMHNdVnW
	OkKPbrl2tPaH0lxhIZQlD2tuCl6i6JA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-497-PRwkPFQbOGq9aFW9h772oA-1; Thu, 23 Apr 2020 18:08:10 -0400
X-MC-Unique: PRwkPFQbOGq9aFW9h772oA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F2AE18A0726;
	Thu, 23 Apr 2020 22:08:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F2379600E8;
	Thu, 23 Apr 2020 22:08:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A53164CAA0;
	Thu, 23 Apr 2020 22:08:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03NM7xfR011449 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Apr 2020 18:07:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 55DA22157F25; Thu, 23 Apr 2020 22:07:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51FD02157F26
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 22:07:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A0A78008A3
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 22:07:57 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[69.89.20.237]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-108-9yRrtUgyOSm2KvedXS4JdQ-1; Thu, 23 Apr 2020 18:07:54 -0400
X-MC-Unique: 9yRrtUgyOSm2KvedXS4JdQ-1
Received: from cm6.websitewelcome.com (cm6.websitewelcome.com [108.167.139.19])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id 93593200E8D4F
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 17:07:52 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id Rk0ejEUTb7MgvRk0ejqtE5; Thu, 23 Apr 2020 17:07:52 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:57146 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1jRk0e-000loJ-A6
	for blinux-list@redhat.com; Thu, 23 Apr 2020 17:07:52 -0500
Date: Thu, 23 Apr 2020 17:07:50 -0500
To: blinux-list@redhat.com
Subject: Re: unpacking git files
Message-ID: <20200423170750.2f6355d3@bigbox.attlocal.net>
In-Reply-To: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
References: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
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
X-Exim-ID: 1jRk0e-000loJ-A6
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:57146
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.

I'm not sure what sort of "git file" you have.  If it's a "bundle",
you can pull from it as if it was an upstream project:

  git clone your_repo.bundle repo

to create a local directory called "repo" and clone that bundle into
it.

If it's just a pack file from inside the .git/ folder from another
repo, there's no telling what may or may not be in there (okay, one
can spelunk in there, but you lose a lot of the metadata that is
elswhere in the folder such as branch-heads/names, and any commits
that weren't part of the pack-file)

-tim

On April 23, 2020, Linux for blind general discussion wrote:
> If you download a git file how is it possible to have git unpack
> the file for you into its own directory tree?
> I failed to write my git credentials in braille and haven't used
> them for a very long time so may be able to get a git file using
> wget but for now I don't know how to unpack the file.
> 
> 
> 
> --
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

