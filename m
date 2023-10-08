Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1C77BCE4C
	for <lists+blinux-list@lfdr.de>; Sun,  8 Oct 2023 14:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696767000;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uqgdzgGokTSWdwD1CyYtB5ZlY/BPEug6gULHCDRnyNk=;
	b=Z8JlAw9WNvW26s/kJZQQF0nhEFyBodhosBLnZv+tSUFetd4rh+8CzW738ynwIO3Z/Hkq6w
	ckvWRihBXIDTuMONmfKBx5DkoBQPDA8vFemT+0ZJt3Y4rVYPH8vCpKVATdpoLmBrvfiTT5
	dTs1AnufN9emj85eqdzWqXhhafit050=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-15-IfodoJKkO1ynjQ1GufAneQ-1; Sun, 08 Oct 2023 08:09:57 -0400
X-MC-Unique: IfodoJKkO1ynjQ1GufAneQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 469F93801146;
	Sun,  8 Oct 2023 12:09:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9AC69C154CB;
	Sun,  8 Oct 2023 12:09:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EF90119465B6;
	Sun,  8 Oct 2023 12:09:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Oct 2023 08:09:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: opensuse tumbleweed
To: blinux-list@redhat.com
References: <mailman.1823.1696646293.2981450.blinux-list@redhat.com>
 <mailman.1943.1696647005.2981447.blinux-list@redhat.com>
 <mailman.24.1696694371.2052528.blinux-list@redhat.com>
 <mailman.26.1696695637.2052531.blinux-list@redhat.com>
In-Reply-To: <mailman.26.1696695637.2052531.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:tlU6pm2ldx8=;afD1p5ECcTupt/sX0bvDCP/RDTu
 Hyh8fdGx834R2GmniNy20IpQ4FhR2nuLxeTHwg7eADbjrHgXIE3a052VG7+cr3zXpCV6D7f+T
 rHnM9QX0Ctki/cijN/BF6M8lRn08LzYeD6Vzq9v+dliiqoFFj9lZkmFCorho77aUBujsovdaa
 cVOG1Zcp0oHjBHZdRV59R9F3NpwqWJM/UkOJPFTCXKWNVY/Zzsuugf4iiqWBWklXjFhr1UGHA
 Wtm875GvjOq/v6bUTTy+1ItfVBee9/Y1FHAYcwuP5AX8YdKDv741bmFKcgTR/M9sGynCeT7+Y
 35whqHAtJjBvbcGq517cg3LCmJkAimpqIDwJ7h2rcPEWPc/JZGxb4+9xkSlEs+USoYJambOBt
 d4Zq93KKYBv0+VPGlGHi990db3NW7yL5lVFSqQSVjfaU03KPRObOAo/C9pEz1ve+t7b2POjag
 64wuBnQ+gQw1/Um7OsBZ66/JvEADgROh5MXkA53pPWg9gZFuTBrEiOxRCfwOFJZeYe5VmBdN3
 xjy8wbGy+BoWNfeSqGMwuEHvQ6ACIKJmv27UXb0Ji4b1YJ4GLftspf7tjfjFLexNhEsz+ayCL
 BpOLOOr8jqm1bFblUUA3FQlEokSChXhQPgy6Hty8a8u2/Si562GWh5QTmV1v4HI9ZKJCpwTAk
 tG2OrPP3Qj1IaU5ixyDMvvdRKvLJAU5Tglg2/2JpxlYic5XorafRrY7RDiIDgoBYChluuikkL
 8n0BgD2SFVlzni4y9rziv+0bM+5qlZBrut63DVBkVXSY3VdPXLwpL8JWPqNN/wC7OlV33h3py
 O13uNGsoBL1E7wQACXf0RmDMsGfDsYlc8072ZGSPDKhHJz2CMvkD3xqI8/+yPebfkBdyJKuUg
 J1PtGeJzdrx//BEspp93OzxgKaXofnmJO0+YTAnnSCeNG3v856uKZVa55I6NG2CwJ+H6wZ/zU
 0Tz9xZC4up7EnegzabM0/CsBiJ4=
Message-ID: <mailman.97.1696766986.2052531.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

> Aptitude includes fields for compressed(persumably the size of the
> .deb) and uncompressed(presumably how much space the installed package
> will take up) sizes for each package, but that's just for that package


I can see the total installed size of a package on my rpm-based Fedora
system, but I don't see the compressed size, nor do I see either size
for the package along with its dependencies. That said, I just used dnf
info to look up the package information; I didn't refine the query in
any way. there are lots of things I can find out about rpm packages, I'm
just not sure the total compressed or installed size of all dependencies
is one of those things I can look up.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

