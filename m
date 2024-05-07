Return-Path: <blinux-list+bncBDYPVTOXSQEBBZMT5GYQMGQE3YAZ65Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC348BE780
	for <lists+blinux-list@lfdr.de>; Tue,  7 May 2024 17:33:59 +0200 (CEST)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-23d18580177sf5020569fac.0
        for <lists+blinux-list@lfdr.de>; Tue, 07 May 2024 08:33:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715096038; cv=pass;
        d=google.com; s=arc-20160816;
        b=TxtAy+8bBHJEf1VAXrE12hgXDWURA8ufze6oR2vDHKCSUDPXgFTQ/AOz6r8GVUxeVp
         T0ruT4PnRAulPyGvhW8KbUv6TkSjvSo2kRPG7swK6UsgDqGJC5IiXWZr/cjQRi0KJiEM
         Rh+2znBvudPjtRnGWPHt7uVQmSfSvA3Ute9iLCs0oHHJpFOVOKWLFr0ruI7+nEPqZnEY
         0UnCIC0yRkMLNm6kQf23Q95b9a0NuVfvM7ZLe7HxA6Hf59eZhXTbuYbrYtqiwYnxuH3h
         5HwXY4vvHoEPWFSE8GfJlVAcrbbfW62qRxkBZFszBjVV2C0G2EAbSlZG/D/NC7mFOlDL
         stGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to;
        bh=zPiDB0dC9HlfubJN+eeRMEeab3sEPxZ4YfLX9tq9kMk=;
        fh=kBG7Kk+PnMsTn2Sgrl/vAm9E7oGk4CJPTWritwd1czI=;
        b=Yqw9U7Qkf3UG/OTf6oD6BUAohW87NT72JyR2XWhvcsG/NJRkmUZyNr76Ac2uzQPCKg
         ryEydPu2unisZFGZHMH5FuDVfsXmZD5RX7YJDiU/JvBWuni48G2UVEXpLnkmsklkFZAV
         icu2sduMBF8mNZuGnbYBdg//OuUeaG7/6RuyeIst+O9W3pBYaarxgxW8wz8ix9WOHOOf
         wJhTH1bg1sisiQfb34XDwTUoyUi4qWSU/oMIDuU5swgYVfADzzMeMcOTQ8HTMStbI/G5
         i8MS8a3Zt9K5kg4zx4ssm9Ad8bNuusqClGb0X0vJhBb1VXGWLZaVrYozTmuAu+z3qPZo
         b7YQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715096038; x=1715700838;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zPiDB0dC9HlfubJN+eeRMEeab3sEPxZ4YfLX9tq9kMk=;
        b=bU+RFuVFfU8/MbmJ58Mbao/qUT/sQ7fHjd3sKWDhCUAsZxWKIseDtLGz1UxtQ3IgCb
         U82LYtw6qHl40kQCvPPlh2CpUgwTcdMC/E3GZTZ71gpFJPMXnxjdQRzN7dTLkgZ7/ex2
         D9d3rTawPdc3aermwbXonBf+LRozR4pV4XkUQZytMeR6slyInKfsqgyUV7o2gpenWCfJ
         tFpeHOwDXu3tmzQkXUIPnZQvtipziLcyGcfWv06ViBqYHYmTe5q30dqR1fhryq/nAA84
         CVcNeP8Vr8RawhCfJ5Bl8r2sWJBcN5X7j/Fyw70fQgcM1cOqPbIRGh6kILARVXr9gUxy
         CfLw==
X-Forwarded-Encrypted: i=2; AJvYcCXyDBK+nhw4W0XyCOtzFD5xOHxb3ZPRsGWJ7DX1Djy4bnWZ3nJtQiSh6R58XM1Ie0H8X3aEYbS5zBjMysfw4QmSvE/Ob6KYhC3Q
X-Gm-Message-State: AOJu0Yx6SYMAPIg1sKvAOoPX+J60sWhuVriwS1mVSqPNj9vvLDcFjHmR
	in0EiSpA73aQIuUMrc9uJIeFnvzNi6qncy7g5+HRMPSUcD6UCo4Ku3ea88RaoRM=
X-Google-Smtp-Source: AGHT+IGoro3lPIQHzLFxw5Z7qvs3rGTB67HG29wTagIUzpLVWbf7F6F5YMTsMH9EN5gpacBQr2ikTQ==
X-Received: by 2002:a05:6870:ad0a:b0:229:f022:ef83 with SMTP id nt10-20020a056870ad0a00b00229f022ef83mr18916874oab.43.1715096038163;
        Tue, 07 May 2024 08:33:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:9611:b0:238:dd56:cbc6 with SMTP id
 586e51a60fabf-23dd0e51ec8ls513150fac.1.-pod-prod-08-us; Tue, 07 May 2024
 08:33:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWlqZkOGcww7f2LVtEuIvlOV67mNoGzJiixlaJPlvwwiudCV/brDedOokSmH7crHPCC6vgFKivZakmJVkxprNYOYX9PmtgAlw+NEwCc
X-Received: by 2002:a05:6870:8dcc:b0:23e:69ae:462b with SMTP id lq12-20020a0568708dcc00b0023e69ae462bmr18004241oab.35.1715096037268;
        Tue, 07 May 2024 08:33:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715096037; cv=none;
        d=google.com; s=arc-20160816;
        b=se0vd6xsXG/mcwBiCX8Tn2c+dXzkgwABgKpYi4w/ZYhOM9wCAZlQazLYIYlnVcndNB
         jqNKfcipOZWZ9BfCfdCDcTNdmw1L+WvVbZhgasOXfILyRhgiC4o1qMb32Gi3nt+MR/f9
         xbQfDNui5G6V6OooVXNEpmuImCTT9qnWTWoOenc+ARY4M2NiHKaYPYkijxjl8BM+clXM
         3rxFn7qb5S3JTpuTiKzQ214Mz7cA6SM7Iv/OfxRNqEviLEsh8RPjuvYMO4aQrINgcUF+
         YqyrZQ9dC9SwyHtDo7Jo0gl0zFy2mmKX3tLKvFVfwoHdyRr07reized4xxnSwcTTSjjo
         FRTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=2sfIPX3fj7N+yp0SjrseGsdmEDhYp+GHScV6tnQ2juU=;
        fh=IXCtbzl7ryabmNehFlcsGYdc5OzusGSroSw98bvxvzk=;
        b=C2+kr0Yiqk6pSyxcakGkTGgRZywpv4yIjxhZ8s0AU61KKUGAy0di9Sk3EduwOXKlsr
         4BG3xPNftdbHplY6Ma2FgLepyHfCV65bpxRb72UAim69eMRERM12OPNyjus7gjPFJF8D
         V1QCN8IoMSkhlV8e+xY0dY8DHRk5+yxmY0NVh8lanSO3RYJbbB3HGAd6XqgvRn6I27y7
         3qMh61+tzYUysibGUnrv71ySvdzFMvFvplbjbqu7bFyuBidp4WSGvqbx02Mp76eApNEs
         KJtr2K+ZdUXFMxqFrbVZve4px79NG/nrSAbzY0YJU98rVZbEDywuz3wwDnQCMVhh0ovh
         HxyQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id er15-20020a05622a5e8f00b00439e7c3c6b0si10952903qtb.802.2024.05.07.08.33.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 08:33:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-LNXGMofYPSeH_rMMiGxMUw-1; Tue, 07 May 2024 11:33:55 -0400
X-MC-Unique: LNXGMofYPSeH_rMMiGxMUw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E27228016F9
	for <blinux-list@gapps.redhat.com>; Tue,  7 May 2024 15:33:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DED211C0689A; Tue,  7 May 2024 15:33:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5BB51C060AE
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:33:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52A99802554
	for <blinux-list@redhat.com>; Tue,  7 May 2024 15:33:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-547-QaJj5z2mMuSJbyx84Omd5g-1; Tue,
 07 May 2024 11:33:51 -0400
X-MC-Unique: QaJj5z2mMuSJbyx84Omd5g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VYj3y5PP7zp9N;
	Tue,  7 May 2024 11:33:50 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VYj3y4tCzzcbc; Tue,  7 May 2024 11:33:50 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VYj3y4dZDzcbV;
	Tue,  7 May 2024 11:33:50 -0400 (EDT)
Date: Tue, 7 May 2024 11:33:50 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: orca@freelists.org
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [orca] Re: lost website linux accessibility
In-Reply-To: <CADO5Rbjsx_qqzH8gutpaV_qJRCs+fjqztUtwgoUqgMro-J8Qvg@mail.gmail.com>
Message-ID: <4ad5f431-7706-b2ec-5f37-d890a2448566@panix.com>
References: <f2d2325e-636a-437d-a489-b2a2fe6fec7a@harrastenurkka.fi> <CAL9unEtZYVaSFOLjJ4LRqXceNte4xDv=F=BZnZ5smYn37AELBA@mail.gmail.com> <CADO5Rbjsx_qqzH8gutpaV_qJRCs+fjqztUtwgoUqgMro-J8Qvg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

That web page offers the Jenux distribution which is a combination of
blackarch and archlinux and perhaps one of several different desktops
depending on your choices when installing.  Best to verify downloaded
files since often broken internet services only downloaded corrupted files
before trying to use and this goes on a flash drive or a blueray disk.
Too large for standard sized dvd's.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 7 May 2024, D.J.J. Ring, Jr. wrote:

> Don't miss the other gems on this page.
>
> Excellent stuff.
>
> Mostly Windows but also Android and some Linux stuff.
>
> Regards,
>
> David
>
> On Tue, May 7, 2024, 11:16=E2=80=AFAM Francesco Tissera <
> francescotissera1211@gmail.com> wrote:
>
> > Hello there,
> >
> > Are you maybe talking about
> > https://nashcentral.duckdns.org/projects.html
> > and the CamOCR script?
> >
> > Thanks and kind regards,
> >
> > Francesco Tissera.
> >
> >
> > On Tue, May 7, 2024 at 5:05=E2=80=AFPM Elias St=C3=A5hlberg <
> > dmarc-noreply@freelists.org> wrote:
> >
> >> hi
> >>
> >> Does anyone remember a website where you could download a kind of
> >> realtime ocr script, it used your computer's webcam and this person
> >>    had been able to install e.g. proxmox independently with it. There
> >> was other Linux stuff on the site, among other things, instructions fo=
r
> >> installing waydroid and android with talkback support
> >>
> >> Elias
> >>
> >> _______________________________________________
> >> Orca mailing list
> >> orca@freelists.org
> >> https://www.freelists.org/list/orca
> >> General information: https://orca.gnome.org
> >> Orca documentation (English):
> >> https://gnome.pages.gitlab.gnome.org/orca/help/
> >> Orca documentation (translations):
> >> https://gnome.pages.gitlab.gnome.org/orca/
> >>
> >
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

