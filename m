Return-Path: <blinux-list+bncBCD3RKH4ZIBBBZ5CQCVAMGQEOVXNPXY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF617DC12C
	for <lists+blinux-list@lfdr.de>; Mon, 30 Oct 2023 21:26:17 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41e3e4aa311sf60922611cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 30 Oct 2023 13:26:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698697576; cv=pass;
        d=google.com; s=arc-20160816;
        b=GwB0zBdkL+1QUr3wpZXbSiWPTq9XjWzpjoZHtFa1dWtXSfBSv8mrGKaZtiXlbtKLG4
         ou+Uz5UOLyV+23N9Hr4Hs/zTZOKtoVh+GrtjFwNNE9VaEf9Y/YjYSYPt/cMDtD5Munzp
         MBisAsNrq5LNaj4ABsOhga9xWpPXdbHiwLqrCssJPzHxrThTv89nIfz0B678/x33QWnt
         ukIghP2dzz7el97ap86Sm9Fh9Yud/VZMYwi/LawulNlFs2njkdxmR2XIAJilUcIPF3Wj
         imloCjKROZgr8TmAe51U6J1yQjoAdFzrnhG+rAlvfI40idxdX74BEy/wb2O5JK3U52l2
         BXkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:delivered-to;
        bh=sYR3ww2T9jEjrIIbxLV6Hiv2WpE12gVo4r/bfY8Y0NA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QS56xblM45JEP/CMWnxembBqs3FEHoSd6i7xgM5w9A8ZqnpAoKhJBOarTVVBqZtLbV
         BzdMmwfSdaM8AWMK+LFJ502a6ytuKa9Cs219mD9VMnB4WCmo0P1ygKf6d13foadsKb/Z
         sZnH+JCW977vLPeZyNSgocJ+1mN2c+I1zGLuU022yJsgM8gBl0+Azh3Vwxdr4JBnxLp9
         k5FvVDBcB7DAR4Cs65V/1LIuqdJjiIFRNl5yaAJ3wQjV3e3xDUW9XYHayfdgJox6s205
         9guDIxTjz7/POKWSLBAQkznlPaEh8sJwvYN95ZXBmAAI86NSlRFrKZp9fEcxyaGR1dl+
         JCEw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698697576; x=1699302376;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sYR3ww2T9jEjrIIbxLV6Hiv2WpE12gVo4r/bfY8Y0NA=;
        b=b/B9pSIl8GUKT33nAV1xBPrp3mitJ2oTUAytf/DgBWfw023/etAS9UxlMa3Y5JVh1Z
         yWRWhYNZRlhXtx+pjsLcR9Ny51oydujetJzutOvicXuIZt/Hpnd/sa5yyzYzg8LzJyut
         Jg56hwvGlKggA9CLRIdaLce/Z1KICVVLnfliT3umTT/9gBboVc1tIW3uIG/FaRSxC+Pl
         XSGys/ZE4GERbz5qplpke+P+yYzh7y11ZnAcpF7eRsGya0w3Dn1HHCHWpe7ydpGtIGOd
         72uH/dPEG6wzvKaKnZkJaGEwB476GjDefjuwbNLtbjEq3RVcyA2GwdTSkfkycmx03piJ
         CLMw==
X-Gm-Message-State: AOJu0YyuAZYYYKePoNU3KdddkBCt+QV7dKzmZ24ENssI4qhVJk6WlAqz
	TB4lKDPHrAeeqFI/LNY3LfBZmA==
X-Google-Smtp-Source: AGHT+IGJNLC8RFhLaleLxNZQs1gCkp8AUpIC7ezFvzWn9zDBgo/yZe4tgtsoM5ayAOKWBVI65w8lBQ==
X-Received: by 2002:ac8:5f4f:0:b0:41e:2227:6abb with SMTP id y15-20020ac85f4f000000b0041e22276abbmr13885497qta.60.1698697575876;
        Mon, 30 Oct 2023 13:26:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:d:b0:41c:b790:86d1 with SMTP id x13-20020a05622a000d00b0041cb79086d1ls529897qtw.2.-pod-prod-06-us;
 Mon, 30 Oct 2023 13:26:15 -0700 (PDT)
X-Received: by 2002:a05:620a:28c5:b0:774:30b7:ed93 with SMTP id l5-20020a05620a28c500b0077430b7ed93mr13011734qkp.29.1698697575001;
        Mon, 30 Oct 2023 13:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698697574; cv=none;
        d=google.com; s=arc-20160816;
        b=A6nwAUtzGAphkk8wEQEuzVHp+3CZpJrcwOWSnCJbRmhA6SaIC5TlyOf+3lQhakI0Tc
         0BVlrE14OFCTjkcCsB4P+DFAcBPiAIUpnz869OHVqSX/eOuv4twWnt5cZXexI9sJq9e/
         61s/d9+VCl3YP5hwhlWrIc9HVzR18E9rAPOJ0B8U2eXQvfL4uOW/pPvmSFygNFFKdhcA
         LDB8x10mxurBAk1UP+rIHFjW8IsTalKbgpwekJhuyRa0yUrVwlUGE4w3w8jSDFsflp7L
         pCGkIB3Pm5wFJOveP6GFx1umxsoTnV5m4tPHT6Stb+xNzfM6gtKYpNdnZ/t8AHXBNkYp
         +Eyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:delivered-to;
        bh=w615pKTK6BSZv/Mhhn+5Oum0tUVJSZFJdVXwV/6QuqQ=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=wemx/0l9m9iEA5BG647iepuLqVseXyBD3WWNNgOkKhNepKri27RAq+EjRucee97b0U
         Y3Eo8zz7nvRUiyjhb5f4pJBj1Eo17h2wCHg803KphXcLBc2z+EnsCqjkh/8KfanG8xCE
         Lndxv9vMGcndruTsZC9COyH857CGvbRaw0VBAjdYFxtJo+uJa3wcUC4pKWmbdjqdX+Bi
         aDX+Sj3OeZRwWrvjGZHFOlmccjv46O4VGT8v91XLfeXrRNwS5u6w97G582MvX3OLoaIY
         f88W1Py5cQnVtqsRx25l0fcTX2Wn6wOV+ki6dLecTSPJ7u2/v7J4mFG4J19RhBnNiEN6
         waRQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id i2-20020a05620a404200b00774252f79f7si6677428qko.306.2023.10.30.13.26.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 13:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) client-ip=209.85.218.44;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-576-XlSAnRljOkylvAmQRFfLZw-1; Mon, 30 Oct 2023 16:26:13 -0400
X-MC-Unique: XlSAnRljOkylvAmQRFfLZw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4215185A58A
	for <blinux-list@gapps.redhat.com>; Mon, 30 Oct 2023 20:26:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3F3C310EA1; Mon, 30 Oct 2023 20:26:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 378A710EA5
	for <blinux-list@redhat.com>; Mon, 30 Oct 2023 20:26:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10337811E88
	for <blinux-list@redhat.com>; Mon, 30 Oct 2023 20:26:13 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-0BIM1rJeMGmM6GsJzDaLLw-1; Mon, 30 Oct 2023 16:26:10 -0400
X-MC-Unique: 0BIM1rJeMGmM6GsJzDaLLw-1
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-98377c5d53eso741557266b.0
        for <blinux-list@redhat.com>; Mon, 30 Oct 2023 13:26:10 -0700 (PDT)
X-Received: by 2002:a17:907:3e0c:b0:9be:2963:5669 with SMTP id
 hp12-20020a1709073e0c00b009be29635669mr9864981ejc.68.1698697568865; Mon, 30
 Oct 2023 13:26:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:6d05:b0:9ad:bdbb:507a with HTTP; Mon, 30 Oct 2023
 13:26:07 -0700 (PDT)
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Mon, 30 Oct 2023 16:26:07 -0400
Message-ID: <CAO2sX33wt=DB3kwzZ02BcpprprGY2oUvV9a4+5fa2fF-NacSqQ@mail.gmail.com>
Subject: Troubleshooting sound.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.218.44 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

Okay, so last night, the 3.5 mm audiojack on the front of my Desktop
cut out in the middle of a youTube video and several reboots haven't
fixed sound coming out of it though I can still hear the faint crackle
that sometimes accompanies plugging/unplugging wired earphones.

I've also tried plugging into the 3.5mm audiojack on the back of my
desktop, and get sound from none of them.

I have a midi controller I recently discovered by accident can be used
as a USB speaker and it has an 3.5mm audiojack I currently have my
earphones plugged into, so I'm not completely without sound, but this
alternative has a few issues:

1. While YouTube videos and media  played from my SDSD or harddrive
sound normal, for some reason, this setup introduces, I'm not sure if
distortion is the right word, but what Orca is making espeak-ng say
sounds off like the volume has been cranked up to high, but it happens
even at low volume.

2. Every few minutes, sound cuts out and I have to unplug and replug
the USB cable to get it back... and how often I need to do this seems
random and is sometimes under a minute(I've had to unplug and replug
the cable twice during the typing of this numbered point).

3. The Midi controller, even when acting as a USB speaker, also acts
like a stand alone music synth, and it's easy for it to make noise
that drowns out what's coming from my desktop.

For what it's worth, I'm Running Debian with LXDE, installed from the
Debian 12.0.0 netinst and mostly upgraded to Debian Testing(I am
running Orca 43 because Orca 44/45 breaks one of my apps'
accessibility) and use Alsamixer in LXterminal for volume control.

Anyone have any idea how to trouble shoot the 3.5mm audiojacks to
either determine its a software issue and fix it or determine its a
hardware issue(which I really hope it isn't, I just bought this
desktop earlier this year and it isn't even paid off), or at least how
to fix the TTS distortion or intermittent sound using the midi
controller as a USB speaker... I do have an Amazon Echo that can be
used as a Bluetooth Speaker, but I don't even know how to pair my PC
to any bluetooth device.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

