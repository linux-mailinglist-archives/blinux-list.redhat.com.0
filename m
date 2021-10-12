Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D0B4C42A779
	for <lists+blinux-list@lfdr.de>; Tue, 12 Oct 2021 16:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634049671;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AxUsSyQybdPRHHosgYl7He2T7l9ILgrctXnarCMCJwk=;
	b=XKsR7PSx3mmLeTCMkiV1+DxiLZTTXW9y22un/b6gxHSQ93oS55YeIEhhuW1LSL7VBBgD5v
	rreXmjtk+g6eN3kJ6Sc06qQT8gvWyHMBeZd56XUdOttXncFkjsUY/pRUozmGN1KlwA2DwU
	v6DypAccSNTPC4+4/Ls4NVmoc3jMyDw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-YU7FeKtINPqWOzBrbUKDhw-1; Tue, 12 Oct 2021 10:41:09 -0400
X-MC-Unique: YU7FeKtINPqWOzBrbUKDhw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 228688C6946;
	Tue, 12 Oct 2021 14:41:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B7035D9C6;
	Tue, 12 Oct 2021 14:41:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 858174EA29;
	Tue, 12 Oct 2021 14:40:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CEej8a008297 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 10:40:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B1A0340CFD10; Tue, 12 Oct 2021 14:40:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC91F40CFD05
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 14:40:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 939E580120D
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 14:40:45 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-195-RTnzF-UONACBUmK-Py8yOg-1; Tue, 12 Oct 2021 10:40:44 -0400
X-MC-Unique: RTnzF-UONACBUmK-Py8yOg-1
Received: by mail-ot1-f41.google.com with SMTP id
	k2-20020a056830168200b0054e523d242aso16614861otr.6
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 07:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=A9YnQo1Sj12U694tw967vcakOPNocIEE0fEO9ctXr40=;
	b=2+CL0QJ4sCgneUlmLkzqMIYfOjjlx5u41HHHdTZsju/X3DMcBH1J+e7CdzdME7x/kp
	7uf1z9gllvNKpuObiEoEwa8BdxWaf5hhrvU7JmvGcK6AiOnk8bdK5t2ENuXfoH50uL/0
	duuJOrrONuzx/Jjl7Oq6TCFDIuO1aalWZ92tFQ1TieFD7YMMKYPjYiDh+Oe71NWdXAFI
	hrtEEfuKwrf76S9i3m40Hgo7SxH0tm7gjwW3STCWeQsvJocfk3fX+UwFmTp9ZLBM93jH
	tKJ5xMgh7PEughXXfQke5X5zWI4W2HcOTxgrkBbfPEDsMgzEWEoMFAwSszi+4AZN9R+A
	jZ2A==
X-Gm-Message-State: AOAM530AxnhEE9+jsgU2OP3chESDyH9QVglgkhcKdPCtB5S3kdLAeYHf
	AFYI4iO8wwwefAqdTdn7uexlEJdYHMk=
X-Google-Smtp-Source: ABdhPJwNaxjc1PDAeGWJ8GzObuWelgMB+7HqcANeJMzgAGYm5fhftJgDKlY+yjqzOyonGqSqYsbT9w==
X-Received: by 2002:a9d:609a:: with SMTP id m26mr26385641otj.226.1634049642102;
	Tue, 12 Oct 2021 07:40:42 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:58d0:fb73:2550:ef8e])
	by smtp.gmail.com with ESMTPSA id
	bm43sm1316865oib.50.2021.10.12.07.40.41 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Oct 2021 07:40:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Tue, 12 Oct 2021 09:40:40 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<CAGJxbF7K6xKtt5oEfU19AB46d9v1DJajG5twtjmEDA5rLcbWAw@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CAGJxbF7K6xKtt5oEfU19AB46d9v1DJajG5twtjmEDA5rLcbWAw@mail.gmail.com>
Message-Id: <9027C6A4-75D9-4D2A-96F2-D19C1D5ADA54@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19CEej8a008297
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thank you.
I knew not that Fedora has a mate edition.

> On Oct 12, 2021, at 5:26 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I would recommend Fedora. It's mainstream, runs up-to-date programs, and
> doesn't depend on one developer. To start Orca, just press Alt + Windows +
> S. I would also go with the Fedora Mate spin, as Mate is, in my opinion, a
> bit more accessible than Gnome. Do enable Assistive Technology support
> after you install it.
> 
> https://spins.fedoraproject.org/mate-compiz/
> 
> Now, Accessible Coconut is good system, but it is very out of date. For a
> learning system, that may be okay, except your school may require newer
> packages. Do you know what distribution of Linux they're going to be using?
> 
> There is also Slint, at:
> 
> https://slint.fr/wiki/doku.php?id=en:start
> 
> But I would not call it newbie friendly, and I've had sound issues with it
> the one time I tried it.
> 
> So yeah there really kinda isn't that much for blind beginner Linux users
> right now. But I'd take a mainstream, well-developed distribution with
> up-to-date packages any day over an out-of-date Ubuntu release.
> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/
> 
> 
> 
> On Mon, Oct 11, 2021 at 11:40 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> 
>> Hi guys,
>> I was wondering if anyone had suggestions on what distro of Linux I should
>> load onto a new computer? I will be using the computer for mainly school
>> purposes to learn the OS.
>> Any help would be greatly appreciated.
>> Thanks,
>> 
>> Ashley
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

