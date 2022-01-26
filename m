Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A286249D0AE
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 18:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643218007;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mF0BgtPirCRQRSK1l6JepReJkbtKPT9qPpadxoCesMk=;
	b=U4B+FUYuz6x3SPzS64FNPM/F7/nuw/Wb8CmOqBDDP7vY1POualG+H7KVDvJi05u9cPgShs
	8o2Q26Gy3mBykhOsOk11VIxuRko2rJ1lIsJVonzwsjRMlQq+sWQ+FdJIiJXw/gymxWoeRz
	TyFThuKJq0uLokhio2epL0LXvkK78Lw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-496-kr_mCHk0OuaNSBLGE6JPcQ-1; Wed, 26 Jan 2022 12:26:38 -0500
X-MC-Unique: kr_mCHk0OuaNSBLGE6JPcQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E25C046862;
	Wed, 26 Jan 2022 17:26:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56D137A431;
	Wed, 26 Jan 2022 17:26:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7321D4A70A;
	Wed, 26 Jan 2022 17:26:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QHLbrI029270 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 12:21:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8C6D9C23DCA; Wed, 26 Jan 2022 17:21:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 890A4C23DC9
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:21:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 752FB185A7B2
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:21:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-262-N36fiOl-OwCHM97RDj136Q-1; Wed, 26 Jan 2022 12:21:35 -0500
X-MC-Unique: N36fiOl-OwCHM97RDj136Q-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JkVrH27Rqz184G
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 12:21:35 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4JkVrH1zB0z1QX9; Wed, 26 Jan 2022 12:21:35 -0500 (EST)
Date: Wed, 26 Jan 2022 12:21:35 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
Message-ID: <YfGDHwxeIwHdYMsg@panix.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
MIME-Version: 1.0
In-Reply-To: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

# convert text file to wave
espeak -f file.txt -w file.wav
#then convert wave file to mp3
lame -m s file.wav -o file.mp3

On Wed, Jan 26, 2022 at 05:49:18PM +0100, Linux for blind general discussion wrote:
> Hello,
> 
> is some way to convert text file to mp3 files and option length of them? In
> Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.
> 
> Thanks a lot and take care.
> 
> Best regards
> 
> Vojta.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt
The difference between truth and falsehood is that truth remains constant no matter which political party holds the majority.
  - A. R. Vener

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

