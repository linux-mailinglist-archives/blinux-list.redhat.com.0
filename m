Return-Path: <blinux-list+bncBDP7P6HU4IERBAPD6OXQMGQERLWOURA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFFE886544
	for <lists+blinux-list@lfdr.de>; Fri, 22 Mar 2024 03:48:35 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-430f04c2834sf29050401cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 19:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711075714; cv=pass;
        d=google.com; s=arc-20160816;
        b=r5ONvWV6bopzLa47tW0L5Jj+aaqJ/Z3Nf8M0AHB/o4/PlAc/SLVDFgiKv0UAXLy8FY
         YS56oKQYTdELbDJ9FgpwIyWD5rW62YXu5KdQbTm4rua1gnBE88I7cSO5Vp+iLzv5p7HG
         f8t8CXJYL0t8nH6V8LDpMdJ3+BrM8sN8KO1Mo/c9JqzFwjMEk38FryE8nAFSxdGKEQp9
         PoJ0Q0ndHL48OKhwkAgjLYcYhcJTFBHUgSviuGG1UD7RCn4I/K96EvQEAbWXuVLZQzeu
         oO7QL8eZf+w+qII/IIsIdFY01Dg7gMxdLQ51FmVuG2BP0k9L1a2uvysM9xC18x+RoBvm
         DSHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=NIRZBZ7ihtMyYGhfjleWAOZacwigBJSMDqEFg3LQkrQ=;
        fh=C80AF5h5BF6P1DzTcG2xzr4JMAgf3x9i0xRE5Zs7uE4=;
        b=Hnu8ew5QtUn2bJLpKXrHHXMZTBuncebofQEGVfRPy4G6VRRwaiUL8poSP111CvdVP8
         stu4AnP4bHBWeCbYoZJSVjRiO8zBH2dNMtz9IJp/Ni8tIfoKyzxNg95otHbnlm+O7waY
         LrN+5TFQgsC7ppXbW3aKs5kPAY4m0V4r1ySlcol3d00TVp/gnDa1KD3V/DLkR3n8jcWE
         xcnf3Sl44Pcv5XfTabWMVdrTWW54gVFfYlGYb7FmN8VLGdJ/A+lrpZsyT6L7nUaiaVEP
         98o7srFhXKOkugeyfvPBQk0bL5e5eGj/KP0DSyw0GYRBo9cpR1CWDXv3hYLjUtFhKrAK
         ZaaQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711075714; x=1711680514;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NIRZBZ7ihtMyYGhfjleWAOZacwigBJSMDqEFg3LQkrQ=;
        b=TyawyBj8/yf0WFUNSXnK/fPDMhEdy9mzwr+zIX9nAgq8BSRqj8ONSwNwA5WyJA5Dcf
         0URV1M1w0VdRv6dlhiJyR8AU8Ucq0NCoYSJ7Is/b8lnTtiE0HCrw/a6TUUsG5tBlHhkL
         wXJcmNx2c/41m0H3jeWKFB6HbEDXiFLxs7I54p3oFyoNlq6CPUnFUWjFgKqIwrPpXj/m
         vG5o8YeQ6imr6R27p74B3bh3NHbM9kczpPpNKgLUQgvFZsscLCMYSPcAB5guzJSZz78j
         ucmZa1aiO9cFi3aiNV1nFxrnvN+2cCA70TkXwUzoRhnth43fXja3lTsnAtzW/znh2qLX
         SpPg==
X-Forwarded-Encrypted: i=2; AJvYcCXma2p1oBMcmdD3p8f/C9L4fhZx89OiXs/rDaJpxRqUu6LUDU8rGnYTcTmRzyBxOaDebPnCL40I+ZCyuXnLRzE9MXJD9xEovTPb
X-Gm-Message-State: AOJu0YziYC/Dn7WCD2j2xn9lGuSUaqHTBQc4Z1wpiUmuu0VyGOoYbtzM
	/iB8LP+iZrHU8BCyQjWzdQo+VoKT93sQEcg5ag+JWUYO5luDY5a14X1YlZRt9bA=
X-Google-Smtp-Source: AGHT+IF9kg+7K020BT5dkuA++Igcli4Xdxj+uOmogZfKotl4fOxiB7vlyk58pZ/7DUCBMF1kituevw==
X-Received: by 2002:ac8:5bc6:0:b0:430:b2f2:b9e7 with SMTP id b6-20020ac85bc6000000b00430b2f2b9e7mr1218784qtb.6.1711075713863;
        Thu, 21 Mar 2024 19:48:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:4c89:b0:430:e26f:7f59 with SMTP id
 ez9-20020a05622a4c8900b00430e26f7f59ls3348508qtb.1.-pod-prod-00-us; Thu, 21
 Mar 2024 19:48:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUGqVx2RdWyXbeGmtnmv5gHQlyC7DNAJhr4E0CrqLcHTwktIyyp2kxogMvbcx0z+JzaRyrsRiS5UM89hwTxyOuWp09MO/U+2rWThE5c
X-Received: by 2002:a05:620a:4110:b0:78a:2566:65f2 with SMTP id j16-20020a05620a411000b0078a256665f2mr1294876qko.23.1711075713027;
        Thu, 21 Mar 2024 19:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711075713; cv=none;
        d=google.com; s=arc-20160816;
        b=SQtTSaA6dSWwjqNdkPdHbYkYuJ0K+Oas7zpQRbZ+ZQGRne0zBo78jLe1eTHJeyiw0F
         FECLRS51gqc4mxRSFdKz+hNJgPpBTLyJnAGqEQ33dpBUPgwb19JV9n/ff8PxvZfVQwsv
         EB+Ij+j0zTjoAnbpv6Zckx1ByJXELBUMShK4UgUvDEjwlVT0ky9snkhXlTaOYUI1NxTK
         ElD3jk3OLvFCaiO0bRZtkJhTsrwzUKHCEcymHTiITfFG0dh//0Tf3Y2CGVl5EuOnKBbC
         msjfh8kLxLoPp5N5jcW40ZSMv4IIeFPDUtCQSwxeZvd4Aw03pgjzneZfGrS0HAKTuq32
         oURA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=GibcHy9Kz+InCViUY5m3kQ/JvCpl+6TamTXDbVjsosY=;
        fh=T5S26jf+nd2FsVQi9y+1QJxSOSn2FiQ/C8hPxjjluxo=;
        b=cnfs3VnrrmC/S2OdnjNJq91ttS11TuLaejxtlX51dL5ifEq6/bAsvUYA0I+RJmUzCJ
         +8WSQxMmrU0QxRn67P7ckC64K2XTk/TzKVfZIQUf4jiJp2nNi/ST3CA8Z0oUqLDlwB43
         Rk35IOMs3x0lgRIwo/c+OeRQARtx/yxu6RCwpcBDR41zWGxRq2eFsuaP+q0imFEhoibK
         VfsxuTyVNCmj2bLl2M7XQajioxgfyXiqBwTZjJkZ/yeeUu1Q92HIF35SsJCmgwaE17bZ
         PA16I/iqnIp6bTQNvW9KQGMvh5D37/RraV+8swVsbeKMO1tVusolZJ99sfeDpk3Ic/Oo
         AUAA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id wg5-20020a05620a568500b0078a3a5a79cesi369463qkn.353.2024.03.21.19.48.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 19:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) client-ip=65.20.63.74;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-398-0IzjREGfNcu1BMdJhUXf9g-1; Thu,
 21 Mar 2024 22:48:31 -0400
X-MC-Unique: 0IzjREGfNcu1BMdJhUXf9g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E5BA3806279
	for <blinux-list@gapps.redhat.com>; Fri, 22 Mar 2024 02:48:31 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1B585C041F0; Fri, 22 Mar 2024 02:48:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D78A3C041EF
	for <blinux-list@redhat.com>; Fri, 22 Mar 2024 02:48:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8336F28C9803
	for <blinux-list@redhat.com>; Fri, 22 Mar 2024 02:48:30 +0000 (UTC)
Received: from altprdrgo05.altice.prod.cloud.openwave.ai
 (altprdrgo05.altice.prod.msg.synchronoss.net [65.20.63.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-489-mp4bTg6zNd64Axqv2ehoqw-1; Thu,
 21 Mar 2024 22:48:28 -0400
X-MC-Unique: mp4bTg6zNd64Axqv2ehoqw-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65F11F0D018B8503
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrleelgddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65F11F0D018B8503 for blinux-list@redhat.com; Thu, 21 Mar 2024 22:48:27 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rnUxB-0009AC-2f
	for blinux-list@redhat.com;
	Thu, 21 Mar 2024 21:48:21 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: x for blind general discussion <blinux-list@redhat.com>
Subject: crontab -e behaves Oddly in Bookworm with Speech Solved
In-reply-to: <Zfys8Hj68vaXa0kd@panix.com>
References: <E1rnPjf-0007zA-2j@wb5agz> <Zfys8Hj68vaXa0kd@panix.com>
Comments: In-reply-to Rudy Vener <salt@panix.com>
   message dated "Thu, 21 Mar 2024 17:56:00 -0400."
MIME-Version: 1.0
Date: Thu, 21 Mar 2024 21:48:21 -0500
Message-Id: <E1rnUxB-0009AC-2f@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <35226.1711075701.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

Rudy Vener <salt@panix.com> writes:
> According to the man page, crontab runs the -e option with either the 
> VISUAL or EDITOR
> editors.
> 
> Try
> echo $VISUAL
> and
> echo $EDITOR
> to see which editor you might be picking up. Then you could change it in 
> your .profile or  other shell configuration file.
> 
> Rudy

	I could have sworn up and down I had a 

export EDITOR='/usr/bin/vi'
command in all my .bash_profiles.  When I checked $EDITOR and
$VISUAL on those systems, none were set.  They are now and the
problem went "poof!"  That is a different behavior from every
version of Linux from as far back as I can remember up to
bullseye.  In each of those earlier installations, all
you needed to do was answer the prompt to choose what editor you
wanted so thanks for reminding me.  The other thing to be aware
of is that exporting the variable doesn't seem to carry over to a
ssh session as I did it on 1, telling it to export $EDITOR and
thought that would take care of it on the other two systems
involved but it didn't change a thing on any system that didn't
have it locally set in .bash_profile.  In other words, you
probably don't really need to export it as it won't cause the
remote system to honor the exported variable. One must locally set it on
any system you plan to use crontab -e on.

	I am so relieved that this fixed the problem so easily
and now on to learning c++ so I can write some sound recording
programs that make use of the alsa sound libraries that actually
make the writing of audio recorders easier in the long run.

	I've got some old voice-activated sound recorders I wrote
with gcc but it seems that one needs c++ to get the alsa stuff to
work.

	Man! I could use a few more brain cells.  Again thanks.

Martin

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

