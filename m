Return-Path: <blinux-list+bncBCW5NIVR6ABBBVOBXWVAMGQEOGKZ4MY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C86F7E8A7B
	for <lists+blinux-list@lfdr.de>; Sat, 11 Nov 2023 12:09:11 +0100 (CET)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-daf6c1591d5sf22771276.1
        for <lists+blinux-list@lfdr.de>; Sat, 11 Nov 2023 03:09:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699700950; cv=pass;
        d=google.com; s=arc-20160816;
        b=oKjCVTa3md02dSxgVDtwPZ2PcYchRkQXmhGFzl3bJch8CUPVkvp4vkXSAsUp/HhgjO
         0EIFaxjMjlC90hCphvQnWkEYelGtUyzhHn0MSmEpl9fIFleKTk6m2DrwK8OgY5s2Twjn
         mvxD7y9poctOeJHVlb1fINlYP2sI4+vAaeB761ruhhAi/vABDi/0Oz8fchgCzZMZ4bIX
         uZDu55/1kmi+Xz/V275WN2AdSSVd5Nm2CCusZUDH6s8X+dqKu4hUApcgktnvgD1MjQZ2
         m2o81yTPuBl+3qooaGeDM998Lthcg8VFcDjGQhUVKvFSb3QiYz6EqQY9552CYSxd0sEA
         32TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=vgpglj5jLYlowsmfe8Fo1uRiGMG/v/FKnTQ+sLIQXRQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=cgOhw4zpsWNelQhwntcnATtfn50leuRcqv0b3/nKYxNeUM2EoXNIMUZYXF+K4cil02
         KUHtGLvi8Qi5o3mxGEqB5VzcyPDrlHVBJIGVOkB7AuxeuIE6L9o/4orP63jkiM2yQ6d2
         Nfm5HEmZiL+JGTz85XsSXZ4EHLvctaTtvoTu8OpmYx3FtswkymSHK6yzEMabIEj8jnPI
         aKaRxz13PvFJf2k6hbj1IGbEJARkawu3QFMhGHfVnB5e6yeO23kfXoPxjYq8RSZG0o4l
         /PKyVSMMQ1h1XrIZIHVPSGYmKNHYH9cCzpV5JmjUfjFojjV4LXA84Ofs5pFq4UJkj7iQ
         xRJA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.50 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699700950; x=1700305750;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vgpglj5jLYlowsmfe8Fo1uRiGMG/v/FKnTQ+sLIQXRQ=;
        b=mZIlS0F9chRrSJQioTr62kOSB1eND3rukaqFIQE8lySgvnYGcg/tdmCv7+iUxvyVQd
         WU+rhdO4nxpai97m2KorQi5Z5PwBE7oSCGcmRYOJkfoRcf+SnPQHB7VmecXbW+kSDW1Y
         pio1cuR6McUDMXIMWva9oDT9T2ZwBwmhrWaDn4I0XRIX1hAVnDuM4h423kSh57ULycf1
         BwqHFwZ6jpdFceC3SrOEpSbQxIrCKhh1XIZeN6izU7mQp701T7drBHz4eJibMq23GUpA
         Rcp8KmKCz2m2f/LJE7AgCAS43ZxE8FxF+KfaiziOmJiR4CGDLQ3iQ2P/RXHjFGsMC1/m
         vs2g==
X-Gm-Message-State: AOJu0Yxe3JaWeHH7MqF6W2s/9fjyAv5870ewfQ5RTD1yz5pTZtdbArQj
	9f9RDdeK0fSEpuUh3vAlfiHv/Q==
X-Google-Smtp-Source: AGHT+IEcTPCxyak18ZF+/cyLCxog8qcfZdPbPW2KbqNycRTC6RX7Ke0lOImJAKYS5749tW9UnIrDfA==
X-Received: by 2002:a25:b51:0:b0:da0:ca23:ee90 with SMTP id 78-20020a250b51000000b00da0ca23ee90mr1451466ybl.49.1699700949963;
        Sat, 11 Nov 2023 03:09:09 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:d257:0:b0:d9c:28cb:2e58 with SMTP id j84-20020a25d257000000b00d9c28cb2e58ls1030148ybg.1.-pod-prod-07-us;
 Sat, 11 Nov 2023 03:09:09 -0800 (PST)
X-Received: by 2002:a81:5d06:0:b0:5a8:277f:b378 with SMTP id r6-20020a815d06000000b005a8277fb378mr1654837ywb.1.1699700949093;
        Sat, 11 Nov 2023 03:09:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699700949; cv=none;
        d=google.com; s=arc-20160816;
        b=jPtVan6ZNkt1cm/gZeme0bXycTi8tVwDY2NybxP8xH+TcX8cBkyhl71Vxsg1/5Gz4b
         OTeN/wnUAZ8xbW1rbYaRKkkeNQlRQhwQiZkP75QlEOAdmNKCdd/lfpgtLRYE3FBha7uw
         VPXiXXelVjU+1nydHCZzzZw5g3jxv7Pv+MymhM1s6yfau7YMRb3OhHLhqcQ+zbNa1Gtg
         yaTCrQDUHhKSu/Pd6xts7eiQyeGC2TjMxK95wKw2LbTWQMG4O3cEMyGuoIbNuM0cI4mU
         rULhrQNvQ6VmQa2DthUuyPNDGpy73JdtzeHSdpik63Ugehgzq/56dWE2zMHy2j43KaNF
         Qr+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=WQ+sxzAwwbuNkO0OOkweoFYr7U0SVRlT+5CpxVUOggw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=BcmTn3ECVqxpISNh+AnXGo1WLJ+jrbqNgDDS1nlE3y0MyJsyM6gIPm2T7TcXms9l2k
         xEtDwXlMonM4l3I0PtIHvX4H/20IPbKpJrx3qNtSgCyjEklP/E+HcdMTeNKUandrodcZ
         bphL341qp/qinhm9/HXq25ALwBSrKI9haDU3qdtIJPdY7f4mGVGAX7maDjuESb4JCjOs
         xy8OIBf5aqa8e1OY8wL5cNuyV1RqL0KJ0UR2QWSBYB1lL9wuxu2R20+RICJjdL13jCvF
         cW/e/Tb/6d2g81Tu2qc726ca/puG0kz0eX2mG26osu2sTEhFxVjiUHMFgzdr15cShSQl
         QGhg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.50 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id e6-20020a056214162600b00677ade1d4e4si832550qvw.495.2023.11.11.03.09.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 03:09:09 -0800 (PST)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.218.50 as permitted sender) client-ip=209.85.218.50;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-500-5HsLskPjPXuK688bj9qhQw-1; Sat,
 11 Nov 2023 06:09:07 -0500
X-MC-Unique: 5HsLskPjPXuK688bj9qhQw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4EE8C1C051A4
	for <blinux-list@gapps.redhat.com>; Sat, 11 Nov 2023 11:09:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4BBB1502A; Sat, 11 Nov 2023 11:09:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43D04502E
	for <blinux-list@redhat.com>; Sat, 11 Nov 2023 11:09:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 230A38007B3
	for <blinux-list@redhat.com>; Sat, 11 Nov 2023 11:09:07 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-253-mSothk61PCCBg7oUhiF-Og-1; Sat, 11 Nov 2023 06:09:04 -0500
X-MC-Unique: mSothk61PCCBg7oUhiF-Og-1
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-9e4675c7a5fso430871266b.0
        for <blinux-list@redhat.com>; Sat, 11 Nov 2023 03:09:03 -0800 (PST)
X-Received: by 2002:a17:906:d90:b0:9e4:6d0a:c37a with SMTP id m16-20020a1709060d9000b009e46d0ac37amr1358026eji.19.1699700942416;
        Sat, 11 Nov 2023 03:09:02 -0800 (PST)
Received: from [192.168.1.3] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id pj19-20020a170906d79300b0099ce025f8ccsm894195ejb.186.2023.11.11.03.09.01
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Nov 2023 03:09:01 -0800 (PST)
Message-ID: <c086fb98-dac5-4295-b9dd-e02dd53c0bc1@gmail.com>
Date: Sat, 11 Nov 2023 12:09:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Pipewire configuration tool
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.218.50 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,

do you know some accessible pipewire configuration tool? I need to 
modify some settings and I absolutelly don't know, where to find them, 
for example.

When I connect headphones to my computer, output is not automatically 
switched to it - this is Arch linux specific output stays in Speaker,

when I connect my hdmi monitor with speakers, latenci buffer is very low 
and when I launch audio or video with audio, I get sound signal pauses, 
so after 5 10 secs, I get 1 sec of silent, this is specific for all distros

some sound profiles don't work, this is also distro specific.

I'll maybe change audio server to Pulse audio in Arch Linux, but if I 
have correct information, Pipewire is modern, newer and is actively 
developed.

Thanks for your tips,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

