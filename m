Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCC7500219
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 00:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649890484;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OwxNUZ7sYuke6sOX/2E7+gFj06lo5OkjFLOcnpP+zwc=;
	b=ioLYOfBCVX9b+8DdDAZQWw2Rxb5xvKj8K2yIIRjcMHQPnjDFsl+zGaTOjkkp5+y7AywBzC
	7XPJH01Q98X9I5ITyn955V58nkg+rFjns4jfln1BdkD1UFXWblIPPVhh+PC4r90BolmxKc
	46L7ECX0iJo+ryS0eQ+msaw2xlxZwh4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-Ba6TNVIxPpa8SKld-G66lg-1; Wed, 13 Apr 2022 18:54:41 -0400
X-MC-Unique: Ba6TNVIxPpa8SKld-G66lg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E4D27811E76;
	Wed, 13 Apr 2022 22:54:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5C8B04047780;
	Wed, 13 Apr 2022 22:54:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D333A1940353;
	Wed, 13 Apr 2022 22:54:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.8343.1649887607.111209.blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
Date: Wed, 13 Apr 2022 22:54:32 +0000
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
Message-ID: <mailman.8542.1649890475.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Will Win11 even run on an 11-year-old i7 with 4GB of RAM? Admittedly,
this old dinosaur sometimes slows to a Crawl between Firefox being a
behemoth and Orca living up to its name in the resource usage
department, especially on websites that abuse JavaScript and the like,
and I have to switch to tty2 to run killall firefox-esr orca because
one of them has become unresponsive more often than I'd like, but at
least Linux gives me the option of stripping out parts of the GUI I'm
not using and to switch to a pure text environment when the GUI
becomes unresponsive, things I'm pretty sure would require the kind of
hacking Microsoft wouldn't approve of to accomplish under Windows.

Admittedly, I haven't heard anything bad about Windows 11 yet... but I
suspect that's due to people tired of being burned by Microsoft's new
releases doing everything they can to avoid updating for as long as
possible, or due to the shift to mobile phones as the primary
computing device for many laypersons making for fewer people to rant
about Microsoft's latest round of questionable changes on the
Internet... or maybe the Pandemic is slowing adoption...

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

