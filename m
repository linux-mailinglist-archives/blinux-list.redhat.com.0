Return-Path: <blinux-list+bncBCVPTHE7K4IOJRXPVYDBUBF37ZSMQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EE186676A
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 02:03:34 +0100 (CET)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-21ed76406ffsf1712763fac.2
        for <lists+blinux-list@lfdr.de>; Sun, 25 Feb 2024 17:03:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708909413; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ur/fzjj5YjqpJLuHwVIsdprDTJ2naRNo8fXyooq18ViXzngaHwPImjvnU0nn8x2yos
         e3Mu1TcmKHUJ6F4ttTHmRRXOBc4v43s04uPJWmtS1ktzrjjD+/HXL1aKoCQZoSK0Tfyo
         qyjvu9Z3brY3frHWzZwkoYBGPruMqQ2PCENX51xCvUBx+wdpd1GvyrN6Nq1v2OTEllfX
         Xzx/3gm8U1uWib1xxnhWBUIG2rXc9efr57OIg34UAzQOzPQHASJ0WBUn70LQTZxk+bVK
         ldRy7pdxg9qswJJanPvgxfzGCF00OvM+8YViLqQ1ty7SBBCvp/eMBJTv9ddXSUkyFTjA
         AmJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=rZ5Ndq0gT9voWc0FKFWtGxnbwwgesoP8HGe+UlQgb2w=;
        fh=1aXvc09FjihQ8XDyqXMz8t501oftcrrDIqH7FhFQIqc=;
        b=BxfEtaUTjUfOj01nR3LZSoTM9JPx2YZtl2R55mlFCU5/YndHYwJL75JZWfT43viw0M
         q39HLWMoYUP7klwQs4OVfIa1FFC6QqIAAcNbsF9x5oTt1QHLqRPg2hz52l0Rg0aPaqJE
         7mHk+tV7h9p6lVuRS6Vl1XhB+Wjamo/ZkNixUp77q3NvDr9CBjImj7dnQORvjEhBHrO5
         jy03+aZ1xnI/yEnvDSxzoM2NIO87rMHsvmvHRrjNbFBQ7QzohirG26ATCttkfm3xQAwh
         tVK4liXDCXAljN8EM633gxb3MCOJqlh1VO+J+VcOR88NLxRCf+sJkd4ydEUl3wsxUW+e
         pEoA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708909413; x=1709514213;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZ5Ndq0gT9voWc0FKFWtGxnbwwgesoP8HGe+UlQgb2w=;
        b=sB97T9FXPKaW5oDWawHZvZvoR72Yc33+vkAbApL527p3UW80a0rkoQL4zcW0Hqi7EI
         D73nMwZikQDbMV5RKHzn/l9ZyhtS9vWTTv8lgmIGujJy1yqmJQUbnw2eO7tc3/b6j/V+
         rotefF1kRn4WezT9kd73a2CKNvZl6xoaTCgvzaIQ8TI/2W2VQkHEiv/XR6UYSOKFh1kQ
         wgBa8/35fxHQ4Acuj45WLna9Pag4giiKVElI1M/AK9xe6NzdCOQsWzvx5ObqMQkP3E2l
         vdSk7/8m5XyG36F2XAqkgbtcYdu0+SsXS8a2qBTom4drTTwccFNnYkG9kh3LUgshl/Op
         bVfQ==
X-Forwarded-Encrypted: i=2; AJvYcCW7xOQri8vqbMsDKRt3g8V/HaeSto/0wv0O7a2Ud4fkJRTDTsSbhXpSuqQfTm52ydDw7GLKHnCs3hzngawnuGao3rygrKW1hpXA
X-Gm-Message-State: AOJu0YwV+nGnQ0yA6sPhwrj3OTk6uDmR6IdoZzYkx2j4mW/feBQdBUcb
	f6g5umAtoZnvu78m85D1wZmJ9ymuqLHn+bRV8fws/0Y96ZJz1WHqBw6bl5DlfDg=
X-Google-Smtp-Source: AGHT+IFwssd9AJ/ow25fnWyo/RpSwzTsFQVGkepI67g05uCtqFj95t3egPf5HWib8P4zGiiqnRq99g==
X-Received: by 2002:a05:6871:58c:b0:21e:8cc7:c7c8 with SMTP id u12-20020a056871058c00b0021e8cc7c7c8mr5360602oan.37.1708909412796;
        Sun, 25 Feb 2024 17:03:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:e789:b0:219:aa95:702e with SMTP id
 qb9-20020a056871e78900b00219aa95702els2819923oac.1.-pod-prod-06-us; Sun, 25
 Feb 2024 17:03:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWbrNTu9xY4/xffMMXCqRdosCgCAa6fyaKQdZqaZrpn1mejY7FcAGfya8zCXGQlLydfimN6tNV/yVOYw08mb9wt9veKIjOFqKz3ngQR
X-Received: by 2002:a05:6870:918e:b0:21f:c7f9:a4d7 with SMTP id b14-20020a056870918e00b0021fc7f9a4d7mr4262069oaf.3.1708909412026;
        Sun, 25 Feb 2024 17:03:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708909412; cv=none;
        d=google.com; s=arc-20160816;
        b=CnrobfmXHBd7mlC4rJmDbRGIJ8iscsRMhKb63qyzJyzLWUK/fBmhnZpffDw0/pZpcd
         ua4WGhp6b0ncOtH8ASYCXEd4xiKEOZojCsGlUk0VfuknRquS71f2mlXKP/ZeKJnLiN7J
         h95UKlX9Rpnlqe7nLdwlcvvupGuq82WTXco9LQIPnMTt1TWsTQ4vM/QxurRBDXe7lN2d
         UKTl/gC1jz1NyMAHoyMme6gxIs/+WRlDS0TGlv01pnAwer83Yf+2DBBdIARgn0jgdsVE
         qbjABiQW/40oouAQeRinpgcybVLySW8aSa81CKtoowIc1X3C+KkL/jAaUdFq20DgGQtj
         ECMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=rZ5Ndq0gT9voWc0FKFWtGxnbwwgesoP8HGe+UlQgb2w=;
        fh=ib8P8Qb5xBHahqKnjYJ9L6tWxLwD8UVPqX3WKlHDIac=;
        b=YiLs3yuwNLXGo+QfarrMmnW1rX/Hw/XC5lXPoikEAeM0BlPqlOzWsVcRJRfF1V2FY6
         6CgnG0MCL+YNh1Kb1+jDNafkwl1Yh+fmEmsntNZPBkeqlG4OMpv/d3Vw8NoUF2NJEbgK
         NbX5f8ByoxMzITdIyp1qKtmfcyfN5ex+hArs9s9oL8OeiJgaASZrdGRherZDP7nLcMKh
         A34CsrmRwn7U0iucrZV4xCyYvfM/Y+1VcvRKjTzrp4VOM6vs7z8KVZc0DvPfnCUMXIeI
         aXsHCKDPKDcEbc7SYXtz42kVaP2LbPuli4ZtgIIc8ZLJiJN5/f5ZBX75fxUm3pUosEZ1
         pcPw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id j12-20020a37ef0c000000b007872edac214si4017041qkk.603.2024.02.25.17.03.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 17:03:31 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-ixNF62WZNoOJr77BjdyZSQ-1; Sun, 25 Feb 2024 20:03:30 -0500
X-MC-Unique: ixNF62WZNoOJr77BjdyZSQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9866683B826
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 01:03:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 94E871C060B1; Mon, 26 Feb 2024 01:03:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A5511C06710
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:03:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FF4C1025620
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 01:03:30 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-616-4WivSb3nPBSUGgcmsiodCw-1; Sun,
 25 Feb 2024 20:03:28 -0500
X-MC-Unique: 4WivSb3nPBSUGgcmsiodCw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 7ED254050A;
	Sun, 25 Feb 2024 20:03:27 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 422FD100BE8; Sun, 25 Feb 2024 20:03:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 402C310007F;
	Sun, 25 Feb 2024 20:03:27 -0500 (EST)
Date: Sun, 25 Feb 2024 20:03:27 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Paul Merrell <marbux@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: pandoc and the docs format?
In-Reply-To: <CAJ1g4g8_2kyTQ6FDc=TMCkk3nSBk_YcNC_2iF6W=GH+qXxX_QA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2402252001160.897936@users.shellworld.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
 <CAJ1g4g8_2kyTQ6FDc=TMCkk3nSBk_YcNC_2iF6W=GH+qXxX_QA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-849937750-1708909407=:897936"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-849937750-1708909407=:897936
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I imagine this was intended for the list.
I have no idea if this program is here, but the suggestion seems kind of=20
odd, speaking personally?
Bit of a time factor for me too,  I wish to complete the associated form=20
tonight.
Thanks,
Kare



On Sun, 25 Feb 2024, Paul Merrell wrote:

> On Sun, Feb 25, 2024 at 4:38=E2=80=AFPM Karen Lewellen <klewellen@shellwo=
rld.net>
> wrote:
>
>
>> Because the format if not actually a word . doc file, antiword will not
>> convert them.
>> Ideas?
>
>
> Use LibreOffice Writer to convert the .docx to .doc?
>
--1949452079-849937750-1708909407=:897936--

