Return-Path: <blinux-list+bncBCM2V5WE3MDBBHV2Q6VAMGQEO4XV3LY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE687DDC06
	for <lists+blinux-list@lfdr.de>; Wed,  1 Nov 2023 06:07:44 +0100 (CET)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-457bc611991sf2499944137.0
        for <lists+blinux-list@lfdr.de>; Tue, 31 Oct 2023 22:07:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698815263; cv=pass;
        d=google.com; s=arc-20160816;
        b=xdtE4m29iaQrdmM1vimMRTirUmE/yad32tE6kCJHMrte0ds7H0c9nyvbLm+QSxhxGK
         l84dhbkf/pg+vVktzaAwWkNB7ezG51cDuV1plq7fIBU2v3MXapCQ4iFsLXVQoq5uyMuc
         sxyFMsaJz9KyuTrCKlm41/IWDEV9iTfhtJwttDpH5xxkGZmGyjssFVz1padrQ+LAaLhN
         UV2gi48kHvtmi1OEQccydtdE+AyU/Xe1n+6HEzEobdv9gebcJCjq9F3WJ0zP8WKHRcfB
         z+Je9IFw61s1+6zr/neJXtdoGV82bDK1KHwb7AfEf16C2IHJnWJ2SKLIEIkzuaIE4ReD
         XCzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=+nHizEEpUfuHueSmMcWNEKWsRbS433em1/YBoomMQ+U=;
        fh=GpVcGwPIMuDABkc/gGm4HoDROOiSzx/8UNerXWdHcC8=;
        b=br9LthDPb/CgHaUuo5LM6kAHvlBV+KINuLxY+Eho5f4ZYVfRpk9XBul7sZ73y+ri2M
         fY/5v2UFoBrsGLX4/QVz6PC9Gob84zR/Ow6EReTtl8smVtLQ5SxN0hVo6mgZNGPdGCWF
         aim6Ea233EAjBcR21jTuACwyuVWnwLnIxVBSQPL6eMLAZ05PiVK1uWusacsa8h7iSaak
         Jh7tveUMwBhciObvnmgJHih+EBYY18SF/S9+z3t4YRdJCvObS+coiM0H+oaY83sa/pOB
         XKtTbOqwAd4uAKfnWjLk40axRxjhkQElcrUQaGq86G+BKZ/C4VF06oCxmKnl4R4KyyzG
         keJQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698815263; x=1699420063;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+nHizEEpUfuHueSmMcWNEKWsRbS433em1/YBoomMQ+U=;
        b=rFLIVsYFaQB7MRp3srtfWyScajpYyMM13VkduSxpGHgohbkjv1q8KnbV+UOYVIngkh
         0YHGBiarIVEz/dkKGjP8d5bahjuxfpvlqjOdbwY3Mm5uM7K5XPv6javpleKMsEZOPowM
         3myNCaAlIJJ2l1+CI/joKqaacwd3SXui3S5njL2d0HGsimx4y1H886WsGXWJnFEHnTAI
         3Cqc446p6XXng8LP2y6CX7jEdBYZSwEAWrUS/+hAGJd5yDEkHqQ9npwKsrXKf4zBd7xl
         yAayyXDCrR9xkorFcn1tCjKY2AdVKrqIUaucbamDGZZcK271UsGk8v+YJHOvZuF98FHC
         3JpQ==
X-Gm-Message-State: AOJu0Yzvkkb0vobyq4yjXk9y03/+t0dCOmSHaLX6BNnNqhAVrQ2Za/Jq
	tzkmSO9yylvhRRmSGA+v52Jiuw==
X-Google-Smtp-Source: AGHT+IFv1+JZgfjPkdhmXf8gQmCQC+ue3/IFzW8QnmA5fZszwrNJKZmphyYlFWGsJatjUOYdslBP3w==
X-Received: by 2002:a05:6102:474a:b0:455:f47c:6e66 with SMTP id ej10-20020a056102474a00b00455f47c6e66mr14171143vsb.17.1698815263246;
        Tue, 31 Oct 2023 22:07:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:d48:b0:671:3017:522 with SMTP id
 8-20020a0562140d4800b0067130170522ls1993009qvr.2.-pod-prod-07-us; Tue, 31 Oct
 2023 22:07:42 -0700 (PDT)
X-Received: by 2002:a67:c018:0:b0:457:dfe0:ee6e with SMTP id v24-20020a67c018000000b00457dfe0ee6emr13539902vsi.22.1698815262455;
        Tue, 31 Oct 2023 22:07:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698815262; cv=none;
        d=google.com; s=arc-20160816;
        b=AqxdVvn2Pe/spV/Ae1a5UFd7wNnetm1shjh2G3SpZtEhGX+2tj7M+nEyc+/VAfegio
         mDTmsvOLv0H56QTIcbicotC7jkSjFmEWgJRv84MsfNdGR/wo+K9u4eoZGm9JhXGUEUJK
         VIOBsrkYOAG9z1IDHR2fdhhaWSqfQaXVzSbHT2v1OOj2PoVmwmPO4QCasloYcVIhbQIn
         hIdsJ7OQwnYhOmfiOlXrJVoSahY8yfmwamrcVdDQreNazIM78kbhpXFpAYY1h0BcvP3K
         sHRse0RFLqHd0J2zaW0V8tYlSJqZpPrv6POHg23W0WYYtRY4nMqbTRn3Y/hmu7yFeNsK
         3zaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=/OM9IHIs9DOG/Uq6aNR/yq1GR5V+GVDlahaEid8z+0E=;
        fh=GpVcGwPIMuDABkc/gGm4HoDROOiSzx/8UNerXWdHcC8=;
        b=Tfx6rwrEbS2dRtjorzbbO+yqV/wgyTZA5xDBGA4NXSKX4iU/EU/XHFah5Rp3joXRbI
         amItmk2ISa7j6SuUxPndq9ni8Rdi76mleQNAOcOH9+djc9KpZidLm1GAxXvUAcxbol4Y
         ML90NvbZpPgjgtBi611DizL5YL0aqckOM7CPPiZyrhl9Q64UklIve9Ixm+e7kJYDj5hx
         j6Hng+AdDdlBiWWSGNS4ujXO8CSscgSLoawQs0jlU0dkk3vpuB7hL9ZSozw1Sd+Ulzg+
         AyMuHt2/YNpyPcm0dX463BuHoFvF4N3AbctTyOWPxTL62KSUJ3np4CL3FzlemZEN6eHy
         /srw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id d20-20020ac85ad4000000b00417b06ca306si2373400qtd.247.2023.10.31.22.07.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 22:07:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-639-pX75rEZCNuKdBqov0sogZg-1; Wed, 01 Nov 2023 01:07:41 -0400
X-MC-Unique: pX75rEZCNuKdBqov0sogZg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00C6785A58A
	for <blinux-list@gapps.redhat.com>; Wed,  1 Nov 2023 05:07:41 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id F1B0610F52; Wed,  1 Nov 2023 05:07:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9F9610F51
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 05:07:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD41A1C08960
	for <blinux-list@redhat.com>; Wed,  1 Nov 2023 05:07:40 +0000 (UTC)
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-587-ocYif0FHPzaAU2IPnP1fsQ-1; Wed, 01 Nov 2023 01:07:38 -0400
X-MC-Unique: ocYif0FHPzaAU2IPnP1fsQ-1
Date: Wed, 01 Nov 2023 05:07:32 +0000
To: Blinux Konference <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Battery status for bluetooth devices
Message-ID: <88047a1a-1359-496d-bbc5-20acbc580715@protonmail.com>
In-Reply-To: <3197AB96-E32E-4196-AA77-237AAADCD23A@gmail.com>
References: <3197AB96-E32E-4196-AA77-237AAADCD23A@gmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

This is the first time I hear BT devices share the battery status. :D

A quick Google search found this:

https://askubuntu.com/questions/1117563/check-bluetooth-headphones-battery-=
status-in-linux


I need to try this out myself, sounds quite interesting.


Best regards


Rastislav


D=C5=88a 31. 10. 2023 o 22:29 Pavel Vl=C4=8Dek nap=C3=ADsal(a):
> Hi,
> is it possible to detect batery status for connected bluetooth device? I =
think Ubuntu can do it, but I have Fedora 39 and Arch Linux and when I conn=
ect my wireless keyboard or headphones, I can not get the battery status in=
 accessible way. So is it possible in Gnome desktop? All other platforms, e=
specially iOs and Windows 11 can show battery status in widgets or bluetoot=
h settings.
> Thanks,
> Pavel
>
> --
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

