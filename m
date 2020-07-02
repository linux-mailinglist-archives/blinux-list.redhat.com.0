Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id ACB60212405
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 15:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593694869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eU4C3PTjiYXLuhn6jyQLCotkDU9RiRVsJRzL0UtybtI=;
	b=QUG1zw6NaHLNUTeH/VYX2x7cRvX0U+OpD4OCZTqXzxGqLmEBn385Q65wD6vNULyHXcDsap
	PvI3Z/1jzUHjmK3/UigCtF9IjVyWO2r9knJM1N9fWDPMgYRfqn68qKt31kXkQR64l+Y+7g
	gt/BK7bPoiX8yRELJl9wwDO4RlmOiGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-TTDLHJmiOGu56-WFre7zFA-1; Thu, 02 Jul 2020 09:01:07 -0400
X-MC-Unique: TTDLHJmiOGu56-WFre7zFA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A08D105250C;
	Thu,  2 Jul 2020 13:01:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 309FF79225;
	Thu,  2 Jul 2020 13:01:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 056021809547;
	Thu,  2 Jul 2020 13:01:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062D0H5D026176 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 09:00:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 86E81115C708; Thu,  2 Jul 2020 13:00:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 825FA115C6FD
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 13:00:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99287857CE8
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 13:00:14 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-262-bJTx0-MvP9G2uabCxLAjEQ-1; Thu, 02 Jul 2020 09:00:11 -0400
X-MC-Unique: bJTx0-MvP9G2uabCxLAjEQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 062D0BlK235660
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 2 Jul 2020 13:00:11 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 062D0BlK235660
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 062D0BlK235660
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 062D0BAq235659
	for blinux-list@redhat.com; Thu, 2 Jul 2020 09:00:11 -0400
Date: Thu, 2 Jul 2020 09:00:11 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: An Unusual Alpine Challenge?
Message-ID: <20200702130011.GE2669@rednote.net>
References: <alpine.DEB.2.23.453.2006302117390.1539674@chime>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.23.453.2006302117390.1539674@chime>
X-Operating-System: Linux opera.rednote.net 5.6.19-200.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

If they're files in true mbox format, you should be able to point your
favorite mbox client app at the folder name and proceed from there as
you do with any mailbox.

I just collected a selection of emails for an unrelated project in W3C
from the past few years and forwarded the emails as a ingle mbox file to
my colleague.

Best,

Janina

Linux for blind general discussion writes:
> Hi All: I did ask in comp.mail.pine about this, with no responses. I had
> lost quite a lot of text articles which I had been collecting all the way
> back to when I first got on CompuServe in 1994. A great place of finding
> News related wire stories were in Clari.net Usenet groups. Well, Giganews
> still has postings mostly back to 2004, some from 2003. However, we found an
> archive of articles from the 90s which are in .mbox format. I wanted to
> simulate looking at these stories as single articles the way they came off
> the news server, but these .mbox files are sometime 19thousand lines or
> 13MB. Sure there is Linux software to split these, but they are not
> maintaining their orriginal article dates. I think the package is git
> mail-split.
> So I created a new folder in Alpine, gave it a path where these articles are
> housed, but not only is Alpine still seeing the large .mbox file, but Alpine
> is noticing these as read only sub-directories, which in reality they are
> individual names of Clari news groups.
> Can any1 please suggest how better to work with these? I would want to
> aggregate groups of news stories to year related directories, then nuke
> them-and-go on to the next group as you would in an actual news reader. I
> tried naming these files differently thinking I can fool Alpine in to
> rendering them as I was hoping. Thanks so much in advance for any-and-all
> suggestions. There is another more complicate Debian package, mb2mdir  but
> it just gives these files strings of numbers-and-letters.
> Chime
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

