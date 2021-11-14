Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBBB44FA26
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 20:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636917897;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W+XzNjcXtnYFOQ2PXSppOtjhrhUG/5N+WvpDS10upFQ=;
	b=Lu9TMAeU11C+ZU3N5o86O5UdiIJF42oGggDAEYTGSSHH6BNm0+nkkCjIJN4t0quukj3/E7
	xphvz2f5gxBwrp4lq9Cm24UMVg6lVdeRAYmFK/7gBC53sNy6D9RnK+B7VQHJI6oMERk9sw
	gGIyWI6kGdWXh6GPKaRLxajWninJjkU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-DlPxzML8PeKsiMeJDEfSZg-1; Sun, 14 Nov 2021 14:24:53 -0500
X-MC-Unique: DlPxzML8PeKsiMeJDEfSZg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4E401030C21;
	Sun, 14 Nov 2021 19:24:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F084D60BE5;
	Sun, 14 Nov 2021 19:24:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 490A218199EE;
	Sun, 14 Nov 2021 19:24:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AEJOgBE021432 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 14:24:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E8C081121318; Sun, 14 Nov 2021 19:24:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4F551121315
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 19:24:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0DD21811E78
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 19:24:39 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-591-LDqBcGAzNOq6ajKfpC1rlA-1; Sun, 14 Nov 2021 14:24:37 -0500
X-MC-Unique: LDqBcGAzNOq6ajKfpC1rlA-1
Received: by mail-qt1-f171.google.com with SMTP id m25so13625447qtq.13
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 11:24:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=QVv/k4FxqO5n5QmJqTWt7IFS4rDawXRWCtRhT/ZY22U=;
	b=j17+EFNFBNsK5xBBU+OcoxH6fX1DUn22Utrt4DxsfdmYbndTd+piC7Q6Ks7gYVJzsc
	ncs5PCBdhRNCmjden/fWNTTK42on+S8i7kGK/QFGcNM8eVPQL+EFscNVb5t3mO7HI4nX
	FY/v1PFNkVxdM1xJAgCatSomPmEBYYXSbOfiMwkWb5HhnFdNvPzTUOgVU6BtZqrvmZMd
	y/rCpp1WockXlo3AO5eiKbZ5hNc3ue6q0qVl8KMwCrB2cFKDTFKqtwhJJ2wft0fDcVLc
	MoNE6fDOr5RHu6wTaTY8hkgy/FiRQn2g2R87TPe1/9aJYQ+SiZsgS+dqgbhTOQMeJndx
	dCsw==
X-Gm-Message-State: AOAM533aiGwxfd1i2FgXhoXKh5Nn6b36Uf4pYjlETOXx50Wx8o4aeggE
	ecPCZPWZHqYe5YZKL7B8Do5Q37cLs8c=
X-Google-Smtp-Source: ABdhPJzigeV9NB3Zw1EnAIBPcDxdTyJHctl9D4MguFHopaKGULJKeW7MBDdBsCegUKg9qi/VjlG9jA==
X-Received: by 2002:a05:622a:1822:: with SMTP id
	t34mr35369116qtc.14.1636917876779; 
	Sun, 14 Nov 2021 11:24:36 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	u11sm5834524qko.119.2021.11.14.11.24.36 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 14 Nov 2021 11:24:36 -0800 (PST)
Date: Sun, 14 Nov 2021 14:24:34 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
MIME-Version: 1.0
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



The reason alpine is still being developed is no problem but a positive. On the alpine mailing list problems are rare and quickly fixed if
encountered when new updates come out. Pine is not under development because it is a dormant dead end project of the u. of washington.  I have
used both extensively and alpine is just as good or better then pine in all respects.

On Sat, 13 Nov 2021, Linux for blind general discussion wrote:

> Oh but no!
> Pine was created first, is speaking personally, far more stable for that
> reason.
> alpine is a continuation of the pine project, providing additional
> options, and able to be Incorporated into  some extra things these days
> like  those keys some mail services use.
> I know I am not objective, Alpine as installed and configured by dreamhost
> is far less stable to my tastes.
> I dare say it is a matter of personal choices, how important it is to you
> that your client is  still under current development.
>
>
>
> On Sat, 13 Nov 2021, Linux for blind general discussion wrote:
>
> > Good for you and Pine;?? LOL.?? Not sure I know the difference between Pine
> > and Alpine; they are identical in all respects I have encountered, anyway.??
> > Maybe it's a question of brands or licensing??? Elm is also good, assuming
> > it's still around.
> >
> >
> > -Dave?? -
> >
> >
> >
> > On 11/13/21 19:54, Linux for blind general discussion wrote:
> >>  using pine right now to create this email,?? and recommend it very much
> >>  indeed.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
>     [ Part 2: "Attached Text" ]
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

