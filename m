Return-Path: <blinux-list+bncBC4KRXEWRQERBX6FZCVQMGQEKD2KFQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id E86A18091EF
	for <lists+blinux-list@lfdr.de>; Thu,  7 Dec 2023 20:54:08 +0100 (CET)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-db54e86b2d1sf2150250276.1
        for <lists+blinux-list@lfdr.de>; Thu, 07 Dec 2023 11:54:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701978848; cv=pass;
        d=google.com; s=arc-20160816;
        b=vR4KXXulfUR+HDW2iVhM2BhgkPPKP/GX5493Xv6zw7BgcoxO2M56Bc+Umrq7vbwtJJ
         cTseeTfbJd95Q400f6M6AQaEmTvj/wdYEyA9Zx4PHXS6kX3yFu14zm6Wgcdo+twosqiy
         OGvlIyiEbx0IwZvP054pAL/9hXqm/r40tGeAcD+OVCx7w8lK/x7hQFdDDtlQy0tVGEII
         Dr3/2pk8IDolfEpOCGgub2Zt+c3roRn1G2X0FXsQcpvcjTBcPESSF/sqpebAgQ1nynuu
         ODeu1vHK8XZKqKRn+D7cG1YgYyUYRmV0+2QEaElRXNsdk8VteWI2rNpubMNR7R4dOPOu
         3iVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:user-agent:message-id:date
         :subject:to:from:dkim-filter:delivered-to;
        bh=2oXxGJ/ash4773pPnpboteuLLZBhQjbws9TwF6RLH8k=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=ievyf0C9FrYlPJiYnhZIMhdc9kr59D48Sci1qiwzgCS5gT/gmo8gW7g98lhXEPTY/t
         qJ8SvbZwDk0eU2cY0gq+sPpeg5X1Z71a+jckXiJXeey9S61cHwyUAbi0A9jNfvurCnaG
         G1cASnLvbV1Dij6BWW2XRazRX5T9yqV+GkYMnO6Eeq69CED3rDmtUq+jGUuGY9Kvy0ed
         UnBpjDme9WqAYyzm1NcaaCOGHvH6A8yYVAkoDUBtZjPTyZ+kJoVLjtWpQ5qyVPuzby/F
         /BfpJthwwVigJmFIEbjfIXTUCEuRlOywzt78XFFKVq0IwnjCzQOUAf5lBD8Gc9VqNZlP
         LvyA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=ikpi=hs=dalen.lamasti.net=lrs@lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom="srs0=ikpi=hs=dalen.lamasti.net=lrs@lamasti.net"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701978848; x=1702583648;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:message-id:date:subject:to:from:dkim-filter:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2oXxGJ/ash4773pPnpboteuLLZBhQjbws9TwF6RLH8k=;
        b=bwpRfKWMGV7bth216tWolYDMFsjlOHy+oEavPEXv5rl5fcsoekHv69jmcHCLAcQt9N
         cUvAZ5opjkuOn036dPQlaTmCk3m7iVMSYcZri+BSXCiYpSDm7Y7HMFhe+3L7Yo0IkBq6
         90AfQM/b/TXIc9pPHjrkWSUjPBQ91rpbqOFcfcqvrxzJJ+eMGFf+1fr0dHFtxm4ZI8WD
         PijjRgVwyzgEbdYNF29F06swzoHkpzJAjcHd25wEg9G9QI/pdfVS/tDej74MA74dMyEw
         utuFvrFJAi3Mgc/vp+kEAzoc40pDnHzYPQtkQqDOBc0A21P7OnCbIdngySIOjCBAK/RU
         FxPg==
X-Gm-Message-State: AOJu0YzJerD3/cNjTC55+MFOMVO/tU9FM292BwqVVtnrH4u6B7pXLbf/
	UfppcxWIzsbgwFDXEj2h/VFgeA==
X-Google-Smtp-Source: AGHT+IGFBlEH3Z/nSvxMnEJ5AIT3ImdliISsIuN6hm65XHzelJXScOWmmCKCe+yFoRpnqITa17IXlg==
X-Received: by 2002:a25:b794:0:b0:db7:daec:ec6f with SMTP id n20-20020a25b794000000b00db7daecec6fmr4216207ybh.54.1701978847611;
        Thu, 07 Dec 2023 11:54:07 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:5d7:0:b0:d9c:c968:ec87 with SMTP id 206-20020a2505d7000000b00d9cc968ec87ls196915ybf.0.-pod-prod-00-us;
 Thu, 07 Dec 2023 11:54:06 -0800 (PST)
X-Received: by 2002:a25:ad49:0:b0:db7:dacf:6ef with SMTP id l9-20020a25ad49000000b00db7dacf06efmr2648586ybe.51.1701978846748;
        Thu, 07 Dec 2023 11:54:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701978846; cv=none;
        d=google.com; s=arc-20160816;
        b=jY88C4waIS33R+eJO3+/+ZQYIlVWJBD+6IeHQ5lc3jhvdYswZznzkSpyO/hR8PtGOc
         4fyps6/LcYqbb6gu/ZJZinDPd/tWwcyOf3daYEWbnW8v1sSbfHOBSraEoN10sSSGJB/V
         xXNkpZAwoZbuZI7CTDiy0//h9DK1YMueiBVXsmBCuYu0jFBlh1REaZbB9yR0XXPkBm1+
         kKV7mBG/2LipAdYlp49OVi8j85G9g6gF9Zioyvc46J3h/UKRC0oIg9j5wNfxSjlYK8Mb
         XFcDolD0SoPwTB1EPvnIvIgOrmBT9i3afjSlEDPm4xdf4ohixOiTQtvVUX5YL8nJH4qc
         dZ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:date:subject:to:from:dkim-filter
         :delivered-to;
        bh=e0znco4jw0xEML2xVb6FjLqbHU9J/S5B/ftQn5k7mYg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=thtUPgJAQAFkHEXmdYFm1BegQmifqQ9KqW1RbMK85/zPqKIWj+VR4Ms6wDDly6q6BU
         R52TNlyq7oX646olrJzp9liTe/pxz3iprJGfiXlbFdEOlsQ59AGwi8zSqjTjX7FGCEKy
         5Qj5u5PqODyR+CvJFnfgB5wVXAJjy95npz2ajn8gjQHn9kj1qWkVtqZesNXRbScQlE1q
         GCwCrGSr+BDA3WYwBJi7+az6bVWueUqkW6hhkDkcG0YrOKtXDJ09uxvE6Cq/Y/GcPUyU
         c4YtDXceP3XsHgSqmaKG1PI9TemgG5urOOc9KYp0JceLZsOtyDOLkZZKtNSd1aFQw1Jw
         OOgg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=ikpi=hs=dalen.lamasti.net=lrs@lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom="srs0=ikpi=hs=dalen.lamasti.net=lrs@lamasti.net"
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id j130-20020a25d288000000b00db40e6944a0si360579ybg.293.2023.12.07.11.54.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 11:54:06 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=ikpi=hs=dalen.lamasti.net=lrs@lamasti.net designates 185.181.61.11 as permitted sender) client-ip=185.181.61.11;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-137-ucAkg6O7M_a-TnpXQKO76A-1; Thu,
 07 Dec 2023 14:54:03 -0500
X-MC-Unique: ucAkg6O7M_a-TnpXQKO76A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B7241C05EB5
	for <blinux-list@gapps.redhat.com>; Thu,  7 Dec 2023 19:54:03 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 386C18CD1; Thu,  7 Dec 2023 19:54:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3171D8174
	for <blinux-list@redhat.com>; Thu,  7 Dec 2023 19:54:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 11C7A836F24
	for <blinux-list@redhat.com>; Thu,  7 Dec 2023 19:54:03 +0000 (UTC)
Received: from dalen.lamasti.net (lamasti.net [185.181.61.11]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-135-jOobEVPCOKqyP-Y0X-d6Sw-1; Thu,
 07 Dec 2023 14:54:00 -0500
X-MC-Unique: jOobEVPCOKqyP-Y0X-d6Sw-1
Received: by dalen.lamasti.net (Postfix, from userid 500)
	id 9F05D14C1395; Thu,  7 Dec 2023 20:47:46 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 9F05D14C1395
From: =?utf-8?Q?Lars_Bj=C3=B8rndal?= <lars@lamasti.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Pijuice software on Bookworkm
Date: Thu, 07 Dec 2023 20:47:46 +0100
Message-ID: <m37clpyeu5.fsf@dalen.lamasti.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=4.0.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-14) on dalen.lamasti.net
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: lamasti.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lars@lamasti.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=ikpi=hs=dalen.lamasti.net=lrs@lamasti.net designates
 185.181.61.11 as permitted sender) smtp.mailfrom="srs0=ikpi=hs=dalen.lamasti.net=lrs@lamasti.net"
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

Does someone happen to know how to get the pijuice configuration tool,
pijuice_cli to work on the Raspberry Pi OS Bookworkm? It worked on
Bullseye. When starting the
app and selecting General, I get the message `Unable to connect to
device`.

If I activate Status, I get

Traceback (most recent call last):
  File "/usr/bin/pijuice_cli.py", line 2087, in <module>
    loop.run()
  File "/usr/lib/python3/dist-packages/urwid/main_loop.py", line 287, in run
    self._run()
  File "/usr/lib/python3/dist-packages/urwid/main_loop.py", line 385, in _run
    self.event_loop.run()
  File "/usr/lib/python3/dist-packages/urwid/main_loop.py", line 790, in run
    self._loop()
  File "/usr/lib/python3/dist-packages/urwid/main_loop.py", line 827, in _loop
    self._watch_files[fd]()
  File "/usr/lib/python3/dist-packages/urwid/raw_display.py", line 416, in <lambda>
    wrapper = lambda: self.parse_input(
                      ^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/raw_display.py", line 515, in parse_input
    callback(processed, processed_codes)
  File "/usr/lib/python3/dist-packages/urwid/main_loop.py", line 412, in _update
    self.process_input(keys)
  File "/usr/lib/python3/dist-packages/urwid/main_loop.py", line 513, in process_input
    k = self._topmost_widget.keypress(self.screen_size, k)
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/container.py", line 598, in keypress
    return self.top_w.keypress(self.top_w_size(size,
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/container.py", line 1626, in keypress
    key = self.focus.keypress(tsize, key)
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/container.py", line 2316, in keypress
    key = w.keypress((mc,) + size[1:], key)
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/decoration.py", line 622, in keypress
    return self._original_widget.keypress(maxvals, key)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/listbox.py", line 968, in keypress
    key = focus_widget.keypress((maxcol,),key)
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/decoration.py", line 622, in keypress
    return self._original_widget.keypress(maxvals, key)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/wimp.py", line 543, in keypress
    self._emit('click')
  File "/usr/lib/python3/dist-packages/urwid/widget.py", line 461, in _emit
    signals.emit_signal(self, name, self, *args)
  File "/usr/lib/python3/dist-packages/urwid/signals.py", line 265, in emit
    result |= self._call_callback(callback, user_arg, user_args, args)
              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/urwid/signals.py", line 295, in _call_callback
    return bool(callback(*args_to_pass))
                ^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/bin/pijuice_cli.py", line 1994, in item_chosen
    callback()
  File "/usr/bin/pijuice_cli.py", line 209, in __init__
    self.main()
  File "/usr/bin/pijuice_cli.py", line 269, in main
    status_args = self.get_status()
                  ^^^^^^^^^^^^^^^^^
  File "/usr/bin/pijuice_cli.py", line 215, in get_status
    status = pijuice.status.GetStatus().get('data', {})
             ^^^^^^^^^^^^^^
AttributeError: 'NoneType' object has no attribute 'status'



Any hint on how to get it working?

Lars

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

