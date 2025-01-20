Return-Path: <blinux-list+bncBDP7P6HU4IERBXWQXG6AMGQEY3NBVSI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C93A16F10
	for <lists+blinux-list@lfdr.de>; Mon, 20 Jan 2025 16:14:40 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4675c482d6csf87817981cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 20 Jan 2025 07:14:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737386079; cv=pass;
        d=google.com; s=arc-20240605;
        b=lpoWz+w3e7cJ6bFb9X551XcMEAT87WdAiAXPRx5p5odxsYhg79s4vbDNcEkX+27FLW
         04cgKeN8kOq52OEgpMXsyOr4AKwCVGE94/aUNY7nveVJGvs9B0M2stn+qjDeBeo2Vn5N
         8bf1ULqtbQbja/1/vlSjIzMqNs3oaT+noqh4muf0eoKD9qCe9xTVl+nlcQcn+U6NWYZS
         rOEDX/nEGSbWNHcdvicns+muZ7ZUc/LX7Dt0Mkqw6sPh4uekSF42lpjjUBSBgQwLAzRY
         OwxjevRO0VmV8iAyV1s7ozlX8QctZT/6/CDXJbCM8cuVGMmIb5eHRS1xYKE1FM3ylGMZ
         kMPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=dSepk9/WSOM6aWtyUepTfXxFl+M7f4hvXQyVdrLKUtg=;
        fh=By907QTfCgJeIKkUrcZ6vfxNYSiG0BclN0Chlvcc1ik=;
        b=DcGOUkO3szH0wbykFCs6Ir08awE08+pB0UqOSsWVhgbP5lzGjrIRQMUiss38HocZXh
         O3fLBmMImMaZxvOnqFT37rNRLwPiN8nDW2KFR+GfaHspMHPuRVPCwmqwSJ50gDwYOXpZ
         nMeGaaL8DpIWTwlROg9gH/buPNr93zjZGartO31Dwg1MOmY9LV+8M/NfunKt9m7CbTAF
         VXOrRu/R5UI1tlG3tglRNJZ0/vkmzi6lmOcu9Tc5Xo2TUtivbnwMEtu0n7xeVxyNv9lW
         Mj8DElTme07gOBc6PIpkj9P8GCAMQ9xjo7yM321GuZMEXpgylgWlBhIF6Vy/q6JMWYgm
         ZBJg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737386079; x=1737990879;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dSepk9/WSOM6aWtyUepTfXxFl+M7f4hvXQyVdrLKUtg=;
        b=HYJTgP+mjP8OWJxKCCKhz+db1kKHXCvCasH3krlBxJaQ4UY8LThaadXQdJuYGc4BRU
         KXNM+aybmEF2XHYW3RJJic9gWF99sPKJ//25yk5jSseUtSk+gNna256ioOyp2COFP8r3
         QGdLhS7gGkT2DpNaJJhCBMZ+o9C2Msel8AGPg8qbVAjVZKJqRmZlEwo/HYbns2E9Sw48
         IQ4xwAWt23GrOGaFl+wsdAOa7FN2eowmTChLETlBFeevI2/TzbH9BPh1SPB6ithucaos
         C+scTPzQXqymPLEg7AIbdg7oVuaMvRfgxvRrbalvFCbOpm/DdaNiuoJQkTh/kmE/FMfv
         KgmA==
X-Forwarded-Encrypted: i=2; AJvYcCWIO17l4Maladf3akWWuuq+tYdVY6TBRzqrFLjs/8HpkuGBpd4e9K8zAPhg8DVZ5Bzc+z6+LA==@lfdr.de
X-Gm-Message-State: AOJu0Yxy48m1eRH0jhhcNzusE+NBZo+oOAfvF14f+8YIvTbn1gkkmYyw
	1gQ8Khh3pXuxHpvCMX9uUGlrM9H/04sposxCWZ4xHms9zQyQzrx551ECaiTe+Zk=
X-Google-Smtp-Source: AGHT+IFdWhuvkyBvHAqxBQoWO9jlQ0bWdhVWCiSY3hM2t2GXs90YSbd+8FVfT3INYMut8s+anqOh4g==
X-Received: by 2002:a05:622a:14e:b0:462:e827:c11a with SMTP id d75a77b69052e-46e12b266a7mr213253931cf.19.1737386078776;
        Mon, 20 Jan 2025 07:14:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:4d46:b0:469:63f:ce11 with SMTP id
 d75a77b69052e-46e02cd6b89ls16182981cf.0.-pod-prod-05-us; Mon, 20 Jan 2025
 07:14:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV3D1LG5Fdr9P0Xswg03NiT5jtJItZ9/2kykmlFJjGmqEj61s5E572w++KDYC2QwPr/w4avY3NmU1GLFw==@gapps.redhat.com
X-Received: by 2002:a05:620a:1793:b0:7b1:492c:ba83 with SMTP id af79cd13be357-7be6321993amr1819676485a.10.1737386077668;
        Mon, 20 Jan 2025 07:14:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737386077; cv=none;
        d=google.com; s=arc-20240605;
        b=fZ2cYduXK1VAUJ42DD+CLd4hpAZSogLbZXBtfNC0/l8z0rTWinAbZ/1KubSSoCsB1A
         3YAQ0momCOinJFcrxZf2P9NMi4qmFxGJsCRRNxiL5heR1IgSy69CyTIZY3P/Sp9u8XIX
         cW8vvB2wdhprFU/i//K1PvXFqIq4N5NAgDe0lsEL5T7bgUc9HaBCplRPkD3vq9Ao4t+Y
         ge+NZxe7O5qlTk6zs+WOfYsTcifeGeR1Qexjv13KE+c6qrZSpXzvpjFzE57nFkiyU7j0
         MDtNhqRJ6dBS1uH/+A/wv1DOdx4C+sY4BzpVPPsucSPMXxbNFNh2RlWnsYG5ij+665P9
         Jz2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=4DPAls9MpiRKzfQRNPNIfFso2GmJuMHZ3doVaXr7OFU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=c3/5RR8wtKGP4fqC+tEC+7TCuPtjXoOyanPlgJY+/NKz+dWfGiXRFaYZGtqmclgoia
         17ic3vRXWZw8RFLZGh14LPxg5Z1pvj5qrJoUp2zMIpfvA+VEFuwFkMHWnbqTm5QZf5mm
         QWzMgFOlXHSVeZRx9tn21rLeNJlb6QsU0N79sRXPxCfYUzv3gy/Vb5huqW/1u9kw57us
         QhZWM2Th3dkSMaCygcUtIKEXwptCf5Mh0fC6D7VGFd5KT97YdWZxYel8yqzQzbmajmMf
         YOBzVgEr9N8EwHAM0OB9988Ah3L9KoRfDdO0HydNs2J2rFzC44GGLJkl25EAzzXxh6Oj
         B1ZA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7be614cb62bsi1030787085a.395.2025.01.20.07.14.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 07:14:37 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.74 as permitted sender) client-ip=65.20.63.74;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-214-F2FgNT0EPOqKKHk-Wht15w-1; Mon,
 20 Jan 2025 10:14:36 -0500
X-MC-Unique: F2FgNT0EPOqKKHk-Wht15w-1
X-Mimecast-MFC-AGG-ID: F2FgNT0EPOqKKHk-Wht15w
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 77E37195608F
	for <blinux-list@gapps.redhat.com>; Mon, 20 Jan 2025 15:14:35 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7320D1955F10; Mon, 20 Jan 2025 15:14:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7042C19560A3
	for <blinux-list@redhat.com>; Mon, 20 Jan 2025 15:14:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D8CAE1956087
	for <blinux-list@redhat.com>; Mon, 20 Jan 2025 15:14:34 +0000 (UTC)
Received: from altprdrgo05.altice.prod.cloud.openwave.ai
 (altprdrgo05.altice.prod.cloud.openwave.ai [65.20.63.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-Ua37sENbOG6qXlGshtKrLg-1; Mon,
 20 Jan 2025 10:14:32 -0500
X-MC-Unique: Ua37sENbOG6qXlGshtKrLg-1
X-Mimecast-MFC-AGG-ID: Ua37sENbOG6qXlGshtKrLg
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 677EAFB70206C8C6
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudeiledgieelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepiefgieetvddtieehveefgeegtdduueelvefftdegkeetudfgleefkeeileetvddtnecuffhomhgrihhnpehfohhrmhgrthdrihhnnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdthe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo05.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 677EAFB70206C8C6 for blinux-list@redhat.com; Mon, 20 Jan 2025 10:14:32 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tZtTu-0001Kl-1h
	for blinux-list@redhat.com;
	Mon, 20 Jan 2025 09:14:26 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Fenrir Questions
MIME-Version: 1.0
Date: Mon, 20 Jan 2025 09:14:26 -0600
Message-Id: <E1tZtTu-0001Kl-1h@wb5agz>
X-Mimecast-MFC-PROC-ID: YOIt1bNGkH0ndIy1OACGE7ISf82A7o8WBtJaIvKoR0U_1737386072
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rDv3oNI4R1r1irlfvrXkzumtqSkxb0dvZJEkihLCWc4_1737386075
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5129.1737386066.1@wb5agz.lan>
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

Now that it is going, I found some parts of the setup to be
self-explanatory but other parts aren't as intuitive.  The
24-hour time format is nice to have at times and it looks like
one can change the time format.  

	In /etc/fenrirscreenreader/settings/settings.conf, there
is the following line:

#timeFormAt=%H:%M:%P

I am guessing %H is hours, %M is minutes and %P may let you set
12 or 24-hour time.  The default is 12-hour or AM/PM time.  I
tried some different versions of %P such as %Z or %A to see what
would happen and that's not a wise idea.  When I restarted the
system, fenrir kept starting, throwing an error about that
setting and then dying.  I'm glad I had ssh capability in to the
system.  At first, something other than %P did cause a 24-hour
output but the results weren't pretty what with the error and
fenrir restarting.

	It looks like one needs to use systemdctl to restart
fenrir without fully rebooting as in

    sudo systemctl restart fenrir

All config changes take effect after the restart.

	Generally, I like it but it does take a bit of getting
used to.  Documentation about things like this seems hard to
find.  I guess one could look at the python code and see what it
is looking for in that case.  When the line is in comment form,
you are seeing the default condition and you must uncomment it to
change anything.

	On this system, the sounds appeared after I selected
gstreamer as the device.  Before that, there were no sounds but
there was screen output spoken.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

